// Generated from /home/smantunes/Desktop/setlang-s04/src/setlang.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link setlangParser}.
 */
public interface setlangListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link setlangParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(setlangParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link setlangParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(setlangParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VariableStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterVariableStat(setlangParser.VariableStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VariableStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitVariableStat(setlangParser.VariableStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AssignmentStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterAssignmentStat(setlangParser.AssignmentStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AssignmentStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitAssignmentStat(setlangParser.AssignmentStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code WriteStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterWriteStat(setlangParser.WriteStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code WriteStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitWriteStat(setlangParser.WriteStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code WritelnStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterWritelnStat(setlangParser.WritelnStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code WritelnStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitWritelnStat(setlangParser.WritelnStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IfStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterIfStat(setlangParser.IfStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IfStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitIfStat(setlangParser.IfStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code LoopStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterLoopStat(setlangParser.LoopStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code LoopStat}
	 * labeled alternative in {@link setlangParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitLoopStat(setlangParser.LoopStatContext ctx);
	/**
	 * Enter a parse tree produced by {@link setlangParser#writelnStmt}.
	 * @param ctx the parse tree
	 */
	void enterWritelnStmt(setlangParser.WritelnStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link setlangParser#writelnStmt}.
	 * @param ctx the parse tree
	 */
	void exitWritelnStmt(setlangParser.WritelnStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link setlangParser#writeStmt}.
	 * @param ctx the parse tree
	 */
	void enterWriteStmt(setlangParser.WriteStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link setlangParser#writeStmt}.
	 * @param ctx the parse tree
	 */
	void exitWriteStmt(setlangParser.WriteStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link setlangParser#ifStmt}.
	 * @param ctx the parse tree
	 */
	void enterIfStmt(setlangParser.IfStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link setlangParser#ifStmt}.
	 * @param ctx the parse tree
	 */
	void exitIfStmt(setlangParser.IfStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link setlangParser#loopStmt}.
	 * @param ctx the parse tree
	 */
	void enterLoopStmt(setlangParser.LoopStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link setlangParser#loopStmt}.
	 * @param ctx the parse tree
	 */
	void exitLoopStmt(setlangParser.LoopStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Not}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void enterNot(setlangParser.NotContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Not}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void exitNot(setlangParser.NotContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Or}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void enterOr(setlangParser.OrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Or}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void exitOr(setlangParser.OrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code And}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void enterAnd(setlangParser.AndContext ctx);
	/**
	 * Exit a parse tree produced by the {@code And}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void exitAnd(setlangParser.AndContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Relational}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void enterRelational(setlangParser.RelationalContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Relational}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void exitRelational(setlangParser.RelationalContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BooleanPar}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void enterBooleanPar(setlangParser.BooleanParContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BooleanPar}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void exitBooleanPar(setlangParser.BooleanParContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BooleanLit}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void enterBooleanLit(setlangParser.BooleanLitContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BooleanLit}
	 * labeled alternative in {@link setlangParser#booleanExpr}.
	 * @param ctx the parse tree
	 */
	void exitBooleanLit(setlangParser.BooleanLitContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SetDeclRead}
	 * labeled alternative in {@link setlangParser#variableDecl}.
	 * @param ctx the parse tree
	 */
	void enterSetDeclRead(setlangParser.SetDeclReadContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SetDeclRead}
	 * labeled alternative in {@link setlangParser#variableDecl}.
	 * @param ctx the parse tree
	 */
	void exitSetDeclRead(setlangParser.SetDeclReadContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Set}
	 * labeled alternative in {@link setlangParser#variableDecl}.
	 * @param ctx the parse tree
	 */
	void enterSet(setlangParser.SetContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Set}
	 * labeled alternative in {@link setlangParser#variableDecl}.
	 * @param ctx the parse tree
	 */
	void exitSet(setlangParser.SetContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SetDecl}
	 * labeled alternative in {@link setlangParser#variableDecl}.
	 * @param ctx the parse tree
	 */
	void enterSetDecl(setlangParser.SetDeclContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SetDecl}
	 * labeled alternative in {@link setlangParser#variableDecl}.
	 * @param ctx the parse tree
	 */
	void exitSetDecl(setlangParser.SetDeclContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VarRead}
	 * labeled alternative in {@link setlangParser#variableDecl}.
	 * @param ctx the parse tree
	 */
	void enterVarRead(setlangParser.VarReadContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VarRead}
	 * labeled alternative in {@link setlangParser#variableDecl}.
	 * @param ctx the parse tree
	 */
	void exitVarRead(setlangParser.VarReadContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Var}
	 * labeled alternative in {@link setlangParser#variableDecl}.
	 * @param ctx the parse tree
	 */
	void enterVar(setlangParser.VarContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Var}
	 * labeled alternative in {@link setlangParser#variableDecl}.
	 * @param ctx the parse tree
	 */
	void exitVar(setlangParser.VarContext ctx);
	/**
	 * Enter a parse tree produced by {@link setlangParser#readFunction}.
	 * @param ctx the parse tree
	 */
	void enterReadFunction(setlangParser.ReadFunctionContext ctx);
	/**
	 * Exit a parse tree produced by {@link setlangParser#readFunction}.
	 * @param ctx the parse tree
	 */
	void exitReadFunction(setlangParser.ReadFunctionContext ctx);
	/**
	 * Enter a parse tree produced by {@link setlangParser#assignment}.
	 * @param ctx the parse tree
	 */
	void enterAssignment(setlangParser.AssignmentContext ctx);
	/**
	 * Exit a parse tree produced by {@link setlangParser#assignment}.
	 * @param ctx the parse tree
	 */
	void exitAssignment(setlangParser.AssignmentContext ctx);
	/**
	 * Enter a parse tree produced by {@link setlangParser#type}.
	 * @param ctx the parse tree
	 */
	void enterType(setlangParser.TypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link setlangParser#type}.
	 * @param ctx the parse tree
	 */
	void exitType(setlangParser.TypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link setlangParser#setLiteral}.
	 * @param ctx the parse tree
	 */
	void enterSetLiteral(setlangParser.SetLiteralContext ctx);
	/**
	 * Exit a parse tree produced by {@link setlangParser#setLiteral}.
	 * @param ctx the parse tree
	 */
	void exitSetLiteral(setlangParser.SetLiteralContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprSetLiteral}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprSetLiteral(setlangParser.ExprSetLiteralContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprSetLiteral}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprSetLiteral(setlangParser.ExprSetLiteralContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprLit}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprLit(setlangParser.ExprLitContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprLit}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprLit(setlangParser.ExprLitContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprConcat}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprConcat(setlangParser.ExprConcatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprConcat}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprConcat(setlangParser.ExprConcatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprTextFunc}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprTextFunc(setlangParser.ExprTextFuncContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprTextFunc}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprTextFunc(setlangParser.ExprTextFuncContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprSumSub}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprSumSub(setlangParser.ExprSumSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprSumSub}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprSumSub(setlangParser.ExprSumSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprEmptySet}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprEmptySet(setlangParser.ExprEmptySetContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprEmptySet}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprEmptySet(setlangParser.ExprEmptySetContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprMultDiv}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprMultDiv(setlangParser.ExprMultDivContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprMultDiv}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprMultDiv(setlangParser.ExprMultDivContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprText}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprText(setlangParser.ExprTextContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprText}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprText(setlangParser.ExprTextContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprSetConst}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprSetConst(setlangParser.ExprSetConstContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprSetConst}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprSetConst(setlangParser.ExprSetConstContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprPar}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprPar(setlangParser.ExprParContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprPar}
	 * labeled alternative in {@link setlangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprPar(setlangParser.ExprParContext ctx);
	/**
	 * Enter a parse tree produced by {@link setlangParser#setConstructor}.
	 * @param ctx the parse tree
	 */
	void enterSetConstructor(setlangParser.SetConstructorContext ctx);
	/**
	 * Exit a parse tree produced by {@link setlangParser#setConstructor}.
	 * @param ctx the parse tree
	 */
	void exitSetConstructor(setlangParser.SetConstructorContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IntLit}
	 * labeled alternative in {@link setlangParser#literal}.
	 * @param ctx the parse tree
	 */
	void enterIntLit(setlangParser.IntLitContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IntLit}
	 * labeled alternative in {@link setlangParser#literal}.
	 * @param ctx the parse tree
	 */
	void exitIntLit(setlangParser.IntLitContext ctx);
	/**
	 * Enter a parse tree produced by the {@code RealLit}
	 * labeled alternative in {@link setlangParser#literal}.
	 * @param ctx the parse tree
	 */
	void enterRealLit(setlangParser.RealLitContext ctx);
	/**
	 * Exit a parse tree produced by the {@code RealLit}
	 * labeled alternative in {@link setlangParser#literal}.
	 * @param ctx the parse tree
	 */
	void exitRealLit(setlangParser.RealLitContext ctx);
	/**
	 * Enter a parse tree produced by the {@code StringLit}
	 * labeled alternative in {@link setlangParser#literal}.
	 * @param ctx the parse tree
	 */
	void enterStringLit(setlangParser.StringLitContext ctx);
	/**
	 * Exit a parse tree produced by the {@code StringLit}
	 * labeled alternative in {@link setlangParser#literal}.
	 * @param ctx the parse tree
	 */
	void exitStringLit(setlangParser.StringLitContext ctx);
	/**
	 * Enter a parse tree produced by the {@code TextLit}
	 * labeled alternative in {@link setlangParser#literal}.
	 * @param ctx the parse tree
	 */
	void enterTextLit(setlangParser.TextLitContext ctx);
	/**
	 * Exit a parse tree produced by the {@code TextLit}
	 * labeled alternative in {@link setlangParser#literal}.
	 * @param ctx the parse tree
	 */
	void exitTextLit(setlangParser.TextLitContext ctx);
}