import org.antlr.v4.runtime.tree.ParseTree;
import org.stringtemplate.v4.*;

import classes.SetLangType;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public class CodeGenerator extends setlangBaseVisitor<String> {

    private final Map<String, String> symbolTable = new HashMap<>();

    @Override
    public String visitProgram(setlangParser.ProgramContext ctx) {
        StringBuilder sb = new StringBuilder();
        sb.append("import java.util.*;\n\n");
        sb.append("public class GeneratedProgram {\n");
        sb.append("    public static void main(String[] args) {\n");
        sb.append("        Scanner scanner = new Scanner(System.in);\n");

        for (setlangParser.StatContext stat : ctx.stat()) {
            sb.append(visit(stat)).append("\n");
        }

        sb.append("    }\n");
        sb.append("}\n");
        return sb.toString();
    }

    @Override
    public String visitVariableStat(setlangParser.VariableStatContext ctx) {
        return visit(ctx.variableDecl());
    }

    @Override
    public String visitSetDeclRead(setlangParser.SetDeclReadContext ctx) {
        String varName = ctx.TEXT().getText();
        String type =  visit((ParseTree) ctx.type());
        String prompt = ctx.readFunction().STRING().getText();
        prompt = prompt.substring(1, prompt.length() - 1); // Remove quotes

        ST template = new ST(
            "Set<<type>> <varName> = new HashSet<>();\n" +
            "System.out.print(\"<prompt>\");\n" +
            "String input = scanner.nextLine();\n" +
            "for (String item : input.split(\",\")) {\n" +
            "    <varName>.add(<type>.valueOf(item.trim()));\n" +
            "}\n"
        );
        template.add("varName", varName);
        template.add("prompt", prompt);
        template.add("type", mapType(type));

        symbolTable.put(varName, "Set<" + mapType(type) + ">");
        return template.render();
    }

    @Override
    public String visitVarRead(setlangParser.VarReadContext ctx) {
        String varName = ctx.TEXT().getText();
        String type = ctx.type().getText();
        String prompt = ctx.readFunction().STRING().getText();
        prompt = prompt.substring(1, prompt.length() - 1); // Remove quotes
    
        ST template = new ST(
            "        System.out.print(\"<prompt>\");\n" +
            "        String input = scanner.nextLine();\n" +
            "        for (String item : input.split(\",\")) {\n" +
            "            <varName>.add(<type>.valueOf(item.trim()));\n" +
            "        }\n"
        );
        template.add("varName", varName);
        template.add("prompt", prompt);
        template.add("type", mapType(type));
    
        symbolTable.put(varName, "Set<" + mapType(type) + ">");
        return template.render();
    }
    

    @Override
    public String visitAssignmentStat(setlangParser.AssignmentStatContext ctx) {
        return visit(ctx.assignment());
    }

    @Override
    public String visitWritelnStat(setlangParser.WritelnStatContext ctx) {
        String expr = visit(ctx.writelnStmt().expr());
        return "        System.out.println(" + expr + ");";
    }

    @Override
    public String visitSet(setlangParser.SetContext ctx) {
        String varName = ctx.TEXT().getText();
        String setLiteral = visit(ctx.setLiteral());
        setLiteral = setLiteral.replace("{", "").replace("}","");
        String type = ctx.type().getText();

        if(type.equals("integer")){
            type = "Integer";
        }
        else if(type.equals("real")){
            type = "Double";
        }
        else{
            type = "String";
        }

        symbolTable.put(varName, "Set");
        return "        Set<" + type + "> " + varName + " = new HashSet<>(Arrays.asList("+ setLiteral +"));";
    }

    @Override
    public String visitVar(setlangParser.VarContext ctx) {
        String varName = ctx.TEXT().getText();
        String expr = visit(ctx.expr());
        String type = ctx.type().getText();

        if(type.equals("integer")){
            type = "int";
        }
        else if(type.equals("real")){
            type = "double";
        }
        else{
            type = "String";
        }

        symbolTable.put(varName, "var");
        return "        " + type + " " + varName + " = " + expr+ ";" ;
    }

    @Override
    public String visitSetDecl(setlangParser.SetDeclContext ctx) {
        String varName = ctx.TEXT().getText();
        String type = ctx.type().getText();

        symbolTable.put(varName, type);
        return "        Set<" + mapType(type) + "> " + varName + "=" + "new HashSet<>();";
    }

    @Override
    public String visitAssignment(setlangParser.AssignmentContext ctx) {
        String varName = ctx.TEXT().getText();
        String expr = visit(ctx.expr());

        symbolTable.put(varName, "var");
        return varName + " = " + expr + ";";
    }

    @Override
    public String visitSetLiteral(setlangParser.SetLiteralContext ctx) {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        for (setlangParser.ExprContext exprCtx : ctx.expr()) {
            sb.append(visit(exprCtx)).append(",");
        }
        sb.deleteCharAt(sb.length() - 1); // Remove last comma
        sb.append("}");
        return sb.toString();
    }

    @Override
    public String visitExprSetLiteral(setlangParser.ExprSetLiteralContext ctx) {
        return visit(ctx.setLiteral());
    }

    @Override
    public String visitExprLit(setlangParser.ExprLitContext ctx) {
        return visit(ctx.literal());
    }

    @Override
    public String visitExprMultDiv(setlangParser.ExprMultDivContext ctx){
        String left = visit(ctx.expr(0));
        String right = visit(ctx.expr(1));
        String op = ctx.op.getText();

        if(op.equals("//")){
            op = "/";
        }

        return left + " " + op + " " + right;
    }

    @Override
    public String visitExprConcat(setlangParser.ExprConcatContext ctx) {
        String left = ctx.STRING().getText().replace("\"", "");
        String right = visit(ctx.expr());

        if(right.contains("{") && right.contains("}")){
            String result = right.replace("{", "").replace("}", "");
            right = "new HashSet<>(Arrays.asList("+ result +"))";
        }

        return "\"" + left + "\" + " + right;
    }

    @Override
    public String visitExprSumSub(setlangParser.ExprSumSubContext ctx) {
        String left = visit(ctx.expr(0));
        String right = visit(ctx.expr(1));
        String op = ctx.op.getText();

        return left + " " + op + " " + right;
    }

    @Override
    public String visitExprText(setlangParser.ExprTextContext ctx) {
        return ctx.TEXT().getText();
    }

    @Override
    public String visitExprSetConst(setlangParser.ExprSetConstContext ctx) {
        return visit(ctx.setConstructor());
    }

    @Override
    public String visitExprPar(setlangParser.ExprParContext ctx) {
        return "(" + visit(ctx.expr()) + ")";
    }

    @Override
    public String visitSetConstructor(setlangParser.SetConstructorContext ctx) {
        return visit(ctx.readFunction());
    }

    @Override
    public String visitReadFunction(setlangParser.ReadFunctionContext ctx) {
        String prompt = ctx.STRING().getText();
        prompt = prompt.substring(1, prompt.length() - 1); // Remove quotes

        return "read(\"" + prompt + "\")";
    }

    @Override
    public String visitIntLit(setlangParser.IntLitContext ctx) {
        return ctx.INT().getText();
    }

    @Override
    public String visitRealLit(setlangParser.RealLitContext ctx) {
        return ctx.REAL().getText();
    }

    @Override
    public String visitStringLit(setlangParser.StringLitContext ctx) {
        return ctx.STRING().getText();
    }

    @Override
    public String visitTextLit(setlangParser.TextLitContext ctx) {
        return ctx.TEXT().getText();
    }

    private String mapType(String type) {
        switch (type) {
            case "integer": return "Integer";
            case "real": return "Double";
            case "text": return "String";
            default: throw new IllegalArgumentException("Unknown type: " + type);
        }
    }
}
