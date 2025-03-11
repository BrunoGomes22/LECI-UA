import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@SuppressWarnings("CheckReturnValue")
public class Execute extends VectorBaseVisitor<Value> {
   protected Map<String,Value> varsTable;

   public Execute(){
      varsTable = new HashMap<>();
   }

   @Override public Value visitStatShow(VectorParser.StatShowContext ctx) {
      System.out.println(visit(ctx.expr()));
      return null;
   }

   @Override public Value visitStatAssign(VectorParser.StatAssignContext ctx) {
      String key = ctx.VAR().getText();
      Value val = visit(ctx.expr());

      return varsTable.put(key,val);

   }

   @Override public Value visitExprVector(VectorParser.ExprVectorContext ctx) {
      ArrayList<Double> vector = new ArrayList<>();
      String s = ctx.VECTOR().getText();
      s = s.replace("[", "").replace("]","").replace(" ", "");
      if(s.contains(",")){
         String[] stringNumbers = s.split(",");
         for(String x : stringNumbers){
            vector.add(Double.parseDouble(x));
         }
      }
      else{
         vector.add(Double.parseDouble(s));
      }
      Vector v = new Vector(vector);
      return v;
   }

   @Override public Value visitExprNumber(VectorParser.ExprNumberContext ctx) {
      String num = ctx.NUMBER().getText();
      if(num.contains(".")){
         return new Scalar(Double.parseDouble(num));
      }
      else{
         return new Scalar(Integer.parseInt(num));
      }
   }

   @Override public Value visitExprVar(VectorParser.ExprVarContext ctx) {
      String key = ctx.VAR().getText();
      return varsTable.get(key);
   }

   @Override public Value visitExprSign(VectorParser.ExprSignContext ctx) {
      Value val = visit(ctx.expr());
      if(ctx.sign.getText().equals("-")){
         return val.symmetricVector();
      }
      else{
         return val;
      }
   }

   @Override public Value visitExprSumSub(VectorParser.ExprSumSubContext ctx) {
      Value left = visit(ctx.expr(0));
      Value right = visit(ctx.expr(1));

      if(ctx.op.getText().equals("+")){
         return left.sum(right);
      }
      else{
         return left.sub(right);
      }
   }

   @Override public Value visitExprParenthesis(VectorParser.ExprParenthesisContext ctx) {
      return visit(ctx.expr());
   }

   @Override public Value visitExprMultiply(VectorParser.ExprMultiplyContext ctx) {
      Value left = visit(ctx.expr(0));
      Value right = visit(ctx.expr(1));

      Scalar s;
      Vector v;

      if(left.isVector() && right.isVector()){
         System.err.printf("Can't multiply two vectors.");
         System.exit(1);
      }else if(left.isVector() && right.isScalar()){
         s = (Scalar) right;
         v = (Vector) left;
         return v.multiply(s);
      }else if(left.isScalar() && right.isVector()){
         s = (Scalar) left;
         v = (Vector) right;
         return v.multiply(s);
      }else{
         Scalar s1 = (Scalar) left;
         Scalar s2 = (Scalar) right;

         return s1.multiply(s2);
      }
      
      return null;
   }

   @Override public Value visitExprInternalProduct(VectorParser.ExprInternalProductContext ctx) {
      return null;
   }
}
