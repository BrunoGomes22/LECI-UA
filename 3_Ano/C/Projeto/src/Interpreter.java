import classes.*;

import java.util.*;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends setlangBaseVisitor<SetLangType> {

    private final Map<String, SetLangType> symbolTable = new HashMap<>();
    private final Scanner scanner = new Scanner(System.in);

    @Override
    public SetLangType visitVariableStat(setlangParser.VariableStatContext ctx) {
        return visit(ctx.variableDecl());
    }

    @Override
    public SetLangType visitSetDeclRead(setlangParser.SetDeclReadContext ctx) {
        String varName = ctx.TEXT().getText();
        String prompt = ctx.readFunction().STRING().getText();
        prompt = prompt.substring(1, prompt.length() - 1); // Remove quotes
        System.out.print(prompt);
        String userInput = scanner.nextLine();
        Set<SetLangType> set = new HashSet<>();
        for (String item : userInput.split(",")) {
            set.add(new StringType(item.trim()));
        }
        SetType value = new SetType(set);
        symbolTable.put(varName, value);
        return null;
    }

    @Override
    public SetLangType visitVarRead(setlangParser.VarReadContext ctx) {
        String varName = ctx.TEXT().getText();
        String prompt = ctx.readFunction().STRING().getText();
        prompt = prompt.substring(1, prompt.length() - 1); // Remove quotes
        System.out.print(prompt);
        String userInput = scanner.nextLine();
        Set<SetLangType> set = new HashSet<>();
        for (String item : userInput.split(",")) {
            set.add(new StringType(item.trim()));
        }
        SetType value = new SetType(set);
        symbolTable.put(varName, value);
        return null;
    }

    @Override
    public SetLangType visitAssignmentStat(setlangParser.AssignmentStatContext ctx) {
        return visit(ctx.assignment());
    }

    @Override
    public SetLangType visitWritelnStat(setlangParser.WritelnStatContext ctx) {
        SetLangType value = visit(ctx.writelnStmt());
        System.out.println(value);
        return null;
    }

    @Override
    public SetLangType visitSet(setlangParser.SetContext ctx) {
        String varName = ctx.TEXT().getText();
        SetType value = (SetType) visit(ctx.setLiteral());
        symbolTable.put(varName, value);
        return null;
    }

    @Override
    public SetLangType visitVar(setlangParser.VarContext ctx) {
        String varName = ctx.TEXT().getText();
        SetLangType value = visit(ctx.expr());
        symbolTable.put(varName, value);
        return null;
    }

    @Override
    public SetLangType visitSetDecl(setlangParser.SetDeclContext ctx) {
        String varName = ctx.TEXT().getText();
        symbolTable.put(varName, null);;
        return null;
    }

    @Override
    public SetLangType visitAssignment(setlangParser.AssignmentContext ctx) {
        String varName = ctx.TEXT().getText();
        SetLangType value = visit(ctx.expr());
        symbolTable.put(varName, value);
        return null;
    }

    @Override
    public SetLangType visitType(setlangParser.TypeContext ctx) {
        return visitChildren(ctx);
    }

    @Override
    public SetLangType visitSetLiteral(setlangParser.SetLiteralContext ctx) {
        Set<SetLangType> set = new HashSet<>();
        for (setlangParser.ExprContext exprCtx : ctx.expr()) {
            set.add(visit(exprCtx));
        }
        return new SetType(set);
    }

    @Override
    public SetLangType visitExprSetLiteral(setlangParser.ExprSetLiteralContext ctx) {
        return visit(ctx.setLiteral());
    }

    @Override
    public SetLangType visitExprLit(setlangParser.ExprLitContext ctx) {
        return visit(ctx.literal());
    }

    @Override
    public SetLangType visitExprMultDiv(setlangParser.ExprMultDivContext ctx){
        SetLangType left = visit(ctx.expr(0));
        SetLangType right = visit(ctx.expr(1));
        String op = ctx.op.getText();

        if (left instanceof IntegerType && right instanceof IntegerType) {
            int leftVal = ((IntegerType) left).getValue();
            int rightVal = ((IntegerType) right).getValue();
            switch (op) {
                case "*":
                    return new IntegerType(leftVal * rightVal);
                case "//":
                    return new IntegerType(leftVal / rightVal);
                case "\\":
                    return new IntegerType(leftVal % rightVal);
            }
        }
        else if(left instanceof RealType && right instanceof RealType){
            double leftVal = ((RealType) left).getValue();
            double rightVal = ((RealType) right).getValue();
            return new RealType(op.equals("*") ? leftVal * rightVal : leftVal / rightVal);
        }

        else {
            throw new RuntimeException("Unsupported operand types for *, //, \\ or /");
        }
        return null;
    }

    @Override
    public SetLangType visitExprConcat(setlangParser.ExprConcatContext ctx) {
        String left = ctx.STRING().getText().replace("\"", "");
        SetLangType right = visit(ctx.expr());
    
        if (right instanceof StringType) {
            String rightValue = ((StringType) right).getValue();
            return new StringType(left + rightValue);
        } else if (right instanceof SetType) {
            return new StringType(left + right.toString());
        } else if (right instanceof IntegerType) {
            return new StringType(left + ((IntegerType) right).getValue());
        } else if (right instanceof RealType) {
            return new StringType(left + ((RealType) right).getValue());
        } else {
            throw new RuntimeException("Unsupported operand types for string concatenation");
        }
    }

    @Override
    public SetLangType visitExprSumSub(setlangParser.ExprSumSubContext ctx) {
        SetLangType left = visit(ctx.expr(0));
        SetLangType right = visit(ctx.expr(1));
        String op = ctx.op.getText();

        if (left instanceof IntegerType && right instanceof IntegerType) {
            int leftVal = ((IntegerType) left).getValue();
            int rightVal = ((IntegerType) right).getValue();
            return new IntegerType(op.equals("+") ? leftVal + rightVal : leftVal - rightVal);
        } else if (left instanceof RealType && right instanceof RealType) {
            double leftVal = ((RealType) left).getValue();
            double rightVal = ((RealType) right).getValue();
            return new RealType(op.equals("+") ? leftVal + rightVal : leftVal - rightVal);
        } else if (left instanceof StringType && right instanceof StringType) {
            return new StringType(op.equals("+") ? ((StringType) left).getValue() + ((StringType) right).getValue() : null);
        } else {
            throw new RuntimeException("Unsupported operand types for + or -");
        }
    }

    @Override
    public SetLangType visitExprText(setlangParser.ExprTextContext ctx) {
        String varName = ctx.TEXT().getText();
        return symbolTable.getOrDefault(varName, null);
    }

    @Override
    public SetLangType visitExprSetConst(setlangParser.ExprSetConstContext ctx) {
        return visit(ctx.setConstructor());
    }

    @Override
    public SetLangType visitExprPar(setlangParser.ExprParContext ctx) {
        return visit(ctx.expr());
    }

    @Override
    public SetLangType visitSetConstructor(setlangParser.SetConstructorContext ctx) {
        return visit(ctx.readFunction());
    }

    @Override
    public SetLangType visitReadFunction(setlangParser.ReadFunctionContext ctx) {
        String prompt = ctx.STRING().getText();
        prompt = prompt.substring(1, prompt.length() - 1); // Remove quotes
        System.out.print(prompt);
        String userInput = scanner.nextLine();
        Set<SetLangType> set = new HashSet<>();
        for (String item : userInput.split(",")) {
            set.add(new StringType(item.trim()));
        }
        return new SetType(set);
    }

    @Override
    public SetLangType visitIntLit(setlangParser.IntLitContext ctx) {
        return new IntegerType(Integer.parseInt(ctx.INT().getText()));
    }

    @Override
    public SetLangType visitRealLit(setlangParser.RealLitContext ctx) {
        return new RealType(Double.parseDouble(ctx.REAL().getText()));
    }

    @Override
    public SetLangType visitStringLit(setlangParser.StringLitContext ctx) {
        return new StringType(ctx.STRING().getText());
    }

    @Override
    public SetLangType visitTextLit(setlangParser.TextLitContext ctx) {
        return new StringType(ctx.TEXT().getText());
    }
}

