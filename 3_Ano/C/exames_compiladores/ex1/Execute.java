import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

@SuppressWarnings("CheckReturnValue")
public class Execute extends StrLangBaseVisitor<String> {
   protected Map<String,String> varsTable;
   protected Scanner sc;

   public Execute(){
      varsTable = new HashMap<>();
      sc = new Scanner(System.in);
   }

   @Override public String visitStatPrint(StrLangParser.StatPrintContext ctx) {
      System.out.println(visit(ctx.expr()));
      return null;
   }

   @Override public String visitStatAssign(StrLangParser.StatAssignContext ctx) {
      varsTable.put(ctx.VAR().getText(), visit(ctx.expr()));
      return null;
   }

   @Override public String visitExprStr(StrLangParser.ExprStrContext ctx) {
      return ctx.STR().getText().replace("\"", "");
   }

   @Override public String visitExprVar(StrLangParser.ExprVarContext ctx) {
      if(!varsTable.containsKey(ctx.VAR().getText())){
         System.out.println("ERROR: variable " + ctx.VAR().getText() + " does not exist!");
         System.exit(1);
      }
      return varsTable.get(ctx.VAR().getText());
   }

   @Override public String visitExprInput(StrLangParser.ExprInputContext ctx) {
      System.out.print(visit(ctx.expr()));
      return sc.nextLine();
   }

   @Override public String visitExprConcat(StrLangParser.ExprConcatContext ctx) {
      return visit(ctx.expr(0)) + visit(ctx.expr(1));
   }

   @Override public String visitExprRem(StrLangParser.ExprRemContext ctx) {
      return visit(ctx.expr(0)).replace(visit(ctx.expr(1)), "");
   }

   @Override public String visitExprTrim(StrLangParser.ExprTrimContext ctx) {
      return visit(ctx.expr()).replace(" ", "");
   }

   @Override public String visitExprParenthesis(StrLangParser.ExprParenthesisContext ctx) {
      return visit(ctx.expr());
   }

   @Override public String visitExprReplace(StrLangParser.ExprReplaceContext ctx) {
      return visit(ctx.expr(0)).replace(visit(ctx.expr(1)), visit(ctx.expr(2)));
   }
}
