import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

@SuppressWarnings("CheckReturnValue")
public class Execute extends FracLangBaseVisitor<Fraction> {
   protected Map<String,Fraction> varsTable;
   protected Scanner sc;

   public Execute(){
      varsTable = new HashMap<>();
      sc = new Scanner(System.in);
   }
   

   @Override public Fraction visitStatDisplay(FracLangParser.StatDisplayContext ctx) {
      System.out.println(visit(ctx.expr()));
      return null;
   }

   @Override public Fraction visitStatAssign(FracLangParser.StatAssignContext ctx) {
      return varsTable.put(ctx.VAR().getText(), visit(ctx.expr()));
   }

   @Override public Fraction visitExprNumber(FracLangParser.ExprNumberContext ctx) {
      Fraction frac = new Fraction(Integer.parseInt(ctx.NUMBER().getText()));
      return frac;
   }

   @Override public Fraction visitExprFrac(FracLangParser.ExprFracContext ctx) {
      int num = Integer.parseInt(ctx.NUMBER(0).getText());
      int den = Integer.parseInt(ctx.NUMBER(1).getText());
      return new Fraction(num,den);
   }

   @Override public Fraction visitExprVar(FracLangParser.ExprVarContext ctx) {
      String var = ctx.VAR().getText();

      if(!varsTable.containsKey(var)){
         System.err.printf("ERROR: variable %s not found!",var);
      }

      return varsTable.get(var);
   }

   @Override public Fraction visitExprSign(FracLangParser.ExprSignContext ctx) {
      if(ctx.sign.getText().equals("-")){
         if(visit(ctx.expr()).getDen() == 1){
            return new Fraction(visit(ctx.expr()).getNum()*-1);
         }
         else{
            return new Fraction(visit(ctx.expr()).getNum()*-1,visit(ctx.expr()).getDen());
         } 
      }
      return visit(ctx.expr());
   }

   @Override public Fraction visitExprParenthesis(FracLangParser.ExprParenthesisContext ctx) {
      return visit(ctx.expr());
   }

   @Override public Fraction visitExprMultDiv(FracLangParser.ExprMultDivContext ctx) {
      Fraction left = visit(ctx.expr(0));
      Fraction right = visit(ctx.expr(1));
      int newNum;
      int newDen;
      if(ctx.op.getText().equals("*")){
         newNum = left.getNum() * right.getNum();
         newDen = left.getDen() * right.getDen();
         return new Fraction(newNum,newDen);
      }
      else{
         newNum = left.getNum() * right.getDen();
         newDen = left.getDen() * right.getNum();
         return new Fraction(newNum,newDen);
      }
      
   }

   @Override public Fraction visitExprSumSub(FracLangParser.ExprSumSubContext ctx) {
      Fraction left = visit(ctx.expr(0));
      Fraction right = visit(ctx.expr(1));
      int newNum;
      int newDen;
      if(ctx.op.getText().equals("+")){
         newNum = (left.getNum() * right.getDen()) + (right.getNum() * left.getDen());
         newDen = left.getDen() * right.getDen();
         return new Fraction(newNum, newDen); 
      }
      else{
         newNum = (left.getNum() * right.getDen()) - (right.getNum() * left.getDen());
         newDen = left.getDen() * right.getDen();
         return new Fraction(newNum, newDen);
      }
   }

   @Override public Fraction visitExprRead(FracLangParser.ExprReadContext ctx) {
      System.out.print(ctx.TEXT().getText().replace("\"","")+": ");
      String input = sc.nextLine();
      if(!input.contains("/")){
         return new Fraction(Integer.parseInt(input));
      }
      else{
         String[] splittedString = input.split("/");
         return new Fraction(Integer.parseInt(splittedString[0]), Integer.parseInt(splittedString[1]));
      }
      
   }

   @Override public Fraction visitExprReduce(FracLangParser.ExprReduceContext ctx) {
      Fraction frac = visit(ctx.expr());
      int mdc = getMDC(frac.getNum(),frac.getDen());

      int reducedNum = frac.getNum() / mdc;
      int reducedDen = frac.getDen() / mdc;

      return new Fraction(reducedNum,reducedDen);
   }
   
   private int getMDC(int a, int b){
      if(b == 0){
         return a;
      }
      return getMDC(b, a % b);
   }
}
