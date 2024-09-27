// Generated from /home/smantunes/Desktop/setlang-s04/src/setlang.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class setlangParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, BOOLEAN=40, STRING=41, INT=42, REAL=43, TEXT=44, COMMENT=45, 
		WS=46;
	public static final int
		RULE_program = 0, RULE_stat = 1, RULE_writelnStmt = 2, RULE_writeStmt = 3, 
		RULE_ifStmt = 4, RULE_loopStmt = 5, RULE_booleanExpr = 6, RULE_variableDecl = 7, 
		RULE_readFunction = 8, RULE_assignment = 9, RULE_type = 10, RULE_setLiteral = 11, 
		RULE_expr = 12, RULE_setConstructor = 13, RULE_literal = 14;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "stat", "writelnStmt", "writeStmt", "ifStmt", "loopStmt", 
			"booleanExpr", "variableDecl", "readFunction", "assignment", "type", 
			"setLiteral", "expr", "setConstructor", "literal"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "';'", "'writeln'", "'write'", "'if'", "'then'", "'else'", "'end'", 
			"'loop'", "'until'", "'do'", "'while'", "'('", "')'", "'='", "'/='", 
			"'>'", "'<'", "'>='", "'<='", "'not'", "'and'", "'or'", "'set<'", "':='", 
			"'>('", "'read'", "'integer'", "'real'", "'text'", "'{'", "','", "'}'", 
			"'//'", "'\\'", "'*'", "'/'", "'+'", "'-'", "'{}'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, "BOOLEAN", "STRING", "INT", "REAL", "TEXT", "COMMENT", 
			"WS"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "setlang.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public setlangParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(setlangParser.EOF, 0); }
		public List<StatContext> stat() {
			return getRuleContexts(StatContext.class);
		}
		public StatContext stat(int i) {
			return getRuleContext(StatContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitProgram(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(35);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 17593133957404L) != 0)) {
				{
				{
				setState(30);
				stat();
				setState(31);
				match(T__0);
				}
				}
				setState(37);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(38);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StatContext extends ParserRuleContext {
		public StatContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stat; }
	 
		public StatContext() { }
		public void copyFrom(StatContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LoopStatContext extends StatContext {
		public LoopStmtContext loopStmt() {
			return getRuleContext(LoopStmtContext.class,0);
		}
		public LoopStatContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterLoopStat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitLoopStat(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class VariableStatContext extends StatContext {
		public VariableDeclContext variableDecl() {
			return getRuleContext(VariableDeclContext.class,0);
		}
		public VariableStatContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterVariableStat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitVariableStat(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IfStatContext extends StatContext {
		public IfStmtContext ifStmt() {
			return getRuleContext(IfStmtContext.class,0);
		}
		public IfStatContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterIfStat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitIfStat(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class WritelnStatContext extends StatContext {
		public WritelnStmtContext writelnStmt() {
			return getRuleContext(WritelnStmtContext.class,0);
		}
		public WritelnStatContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterWritelnStat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitWritelnStat(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class WriteStatContext extends StatContext {
		public WriteStmtContext writeStmt() {
			return getRuleContext(WriteStmtContext.class,0);
		}
		public WriteStatContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterWriteStat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitWriteStat(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AssignmentStatContext extends StatContext {
		public AssignmentContext assignment() {
			return getRuleContext(AssignmentContext.class,0);
		}
		public AssignmentStatContext(StatContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterAssignmentStat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitAssignmentStat(this);
		}
	}

	public final StatContext stat() throws RecognitionException {
		StatContext _localctx = new StatContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_stat);
		try {
			setState(46);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				_localctx = new VariableStatContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(40);
				variableDecl();
				}
				break;
			case 2:
				_localctx = new AssignmentStatContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(41);
				assignment();
				}
				break;
			case 3:
				_localctx = new WriteStatContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(42);
				writeStmt();
				}
				break;
			case 4:
				_localctx = new WritelnStatContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(43);
				writelnStmt();
				}
				break;
			case 5:
				_localctx = new IfStatContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(44);
				ifStmt();
				}
				break;
			case 6:
				_localctx = new LoopStatContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(45);
				loopStmt();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class WritelnStmtContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public WritelnStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_writelnStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterWritelnStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitWritelnStmt(this);
		}
	}

	public final WritelnStmtContext writelnStmt() throws RecognitionException {
		WritelnStmtContext _localctx = new WritelnStmtContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_writelnStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(48);
			match(T__1);
			setState(49);
			expr(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class WriteStmtContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public WriteStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_writeStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterWriteStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitWriteStmt(this);
		}
	}

	public final WriteStmtContext writeStmt() throws RecognitionException {
		WriteStmtContext _localctx = new WriteStmtContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_writeStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(51);
			match(T__2);
			setState(52);
			expr(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class IfStmtContext extends ParserRuleContext {
		public BooleanExprContext booleanExpr() {
			return getRuleContext(BooleanExprContext.class,0);
		}
		public List<StatContext> stat() {
			return getRuleContexts(StatContext.class);
		}
		public StatContext stat(int i) {
			return getRuleContext(StatContext.class,i);
		}
		public IfStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterIfStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitIfStmt(this);
		}
	}

	public final IfStmtContext ifStmt() throws RecognitionException {
		IfStmtContext _localctx = new IfStmtContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_ifStmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(54);
			match(T__3);
			setState(55);
			booleanExpr(0);
			setState(56);
			match(T__4);
			setState(60);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 17593133957404L) != 0)) {
				{
				{
				setState(57);
				stat();
				}
				}
				setState(62);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(70);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__5) {
				{
				setState(63);
				match(T__5);
				setState(67);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 17593133957404L) != 0)) {
					{
					{
					setState(64);
					stat();
					}
					}
					setState(69);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(72);
			match(T__6);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class LoopStmtContext extends ParserRuleContext {
		public BooleanExprContext booleanExpr() {
			return getRuleContext(BooleanExprContext.class,0);
		}
		public List<StatContext> stat() {
			return getRuleContexts(StatContext.class);
		}
		public StatContext stat(int i) {
			return getRuleContext(StatContext.class,i);
		}
		public LoopStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_loopStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterLoopStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitLoopStmt(this);
		}
	}

	public final LoopStmtContext loopStmt() throws RecognitionException {
		LoopStmtContext _localctx = new LoopStmtContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_loopStmt);
		int _la;
		try {
			setState(110);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,9,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(74);
				match(T__7);
				setState(78);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 17593133957404L) != 0)) {
					{
					{
					setState(75);
					stat();
					}
					}
					setState(80);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				{
				setState(81);
				match(T__8);
				setState(82);
				booleanExpr(0);
				setState(83);
				match(T__9);
				setState(87);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 17593133957404L) != 0)) {
					{
					{
					setState(84);
					stat();
					}
					}
					setState(89);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(90);
				match(T__6);
				}
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(92);
				match(T__7);
				setState(96);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 17593133957404L) != 0)) {
					{
					{
					setState(93);
					stat();
					}
					}
					setState(98);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				{
				setState(99);
				match(T__10);
				setState(100);
				booleanExpr(0);
				setState(101);
				match(T__9);
				setState(105);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 17593133957404L) != 0)) {
					{
					{
					setState(102);
					stat();
					}
					}
					setState(107);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(108);
				match(T__6);
				}
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class BooleanExprContext extends ParserRuleContext {
		public BooleanExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_booleanExpr; }
	 
		public BooleanExprContext() { }
		public void copyFrom(BooleanExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NotContext extends BooleanExprContext {
		public BooleanExprContext booleanExpr() {
			return getRuleContext(BooleanExprContext.class,0);
		}
		public NotContext(BooleanExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterNot(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitNot(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class OrContext extends BooleanExprContext {
		public List<BooleanExprContext> booleanExpr() {
			return getRuleContexts(BooleanExprContext.class);
		}
		public BooleanExprContext booleanExpr(int i) {
			return getRuleContext(BooleanExprContext.class,i);
		}
		public OrContext(BooleanExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterOr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitOr(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AndContext extends BooleanExprContext {
		public List<BooleanExprContext> booleanExpr() {
			return getRuleContexts(BooleanExprContext.class);
		}
		public BooleanExprContext booleanExpr(int i) {
			return getRuleContext(BooleanExprContext.class,i);
		}
		public AndContext(BooleanExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterAnd(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitAnd(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class RelationalContext extends BooleanExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public RelationalContext(BooleanExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterRelational(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitRelational(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BooleanParContext extends BooleanExprContext {
		public BooleanExprContext booleanExpr() {
			return getRuleContext(BooleanExprContext.class,0);
		}
		public BooleanParContext(BooleanExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterBooleanPar(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitBooleanPar(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BooleanLitContext extends BooleanExprContext {
		public TerminalNode BOOLEAN() { return getToken(setlangParser.BOOLEAN, 0); }
		public BooleanLitContext(BooleanExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterBooleanLit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitBooleanLit(this);
		}
	}

	public final BooleanExprContext booleanExpr() throws RecognitionException {
		return booleanExpr(0);
	}

	private BooleanExprContext booleanExpr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		BooleanExprContext _localctx = new BooleanExprContext(_ctx, _parentState);
		BooleanExprContext _prevctx = _localctx;
		int _startState = 12;
		enterRecursionRule(_localctx, 12, RULE_booleanExpr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(124);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,10,_ctx) ) {
			case 1:
				{
				_localctx = new BooleanParContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(113);
				match(T__11);
				setState(114);
				booleanExpr(0);
				setState(115);
				match(T__12);
				}
				break;
			case 2:
				{
				_localctx = new RelationalContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(117);
				expr(0);
				setState(118);
				((RelationalContext)_localctx).op = _input.LT(1);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 1032192L) != 0)) ) {
					((RelationalContext)_localctx).op = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(119);
				expr(0);
				}
				break;
			case 3:
				{
				_localctx = new NotContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(121);
				match(T__19);
				setState(122);
				booleanExpr(4);
				}
				break;
			case 4:
				{
				_localctx = new BooleanLitContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(123);
				match(BOOLEAN);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(134);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(132);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
					case 1:
						{
						_localctx = new AndContext(new BooleanExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_booleanExpr);
						setState(126);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(127);
						match(T__20);
						setState(128);
						booleanExpr(4);
						}
						break;
					case 2:
						{
						_localctx = new OrContext(new BooleanExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_booleanExpr);
						setState(129);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(130);
						match(T__21);
						setState(131);
						booleanExpr(3);
						}
						break;
					}
					} 
				}
				setState(136);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VariableDeclContext extends ParserRuleContext {
		public VariableDeclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDecl; }
	 
		public VariableDeclContext() { }
		public void copyFrom(VariableDeclContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SetContext extends VariableDeclContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode TEXT() { return getToken(setlangParser.TEXT, 0); }
		public SetLiteralContext setLiteral() {
			return getRuleContext(SetLiteralContext.class,0);
		}
		public SetContext(VariableDeclContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterSet(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitSet(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class VarReadContext extends VariableDeclContext {
		public TerminalNode TEXT() { return getToken(setlangParser.TEXT, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ReadFunctionContext readFunction() {
			return getRuleContext(ReadFunctionContext.class,0);
		}
		public VarReadContext(VariableDeclContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterVarRead(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitVarRead(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class VarContext extends VariableDeclContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode TEXT() { return getToken(setlangParser.TEXT, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public VarContext(VariableDeclContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterVar(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitVar(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SetDeclReadContext extends VariableDeclContext {
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public TerminalNode TEXT() { return getToken(setlangParser.TEXT, 0); }
		public ReadFunctionContext readFunction() {
			return getRuleContext(ReadFunctionContext.class,0);
		}
		public SetDeclReadContext(VariableDeclContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterSetDeclRead(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitSetDeclRead(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SetDeclContext extends VariableDeclContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TerminalNode TEXT() { return getToken(setlangParser.TEXT, 0); }
		public SetDeclContext(VariableDeclContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterSetDecl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitSetDecl(this);
		}
	}

	public final VariableDeclContext variableDecl() throws RecognitionException {
		VariableDeclContext _localctx = new VariableDeclContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_variableDecl);
		try {
			setState(173);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
			case 1:
				_localctx = new SetDeclReadContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(137);
				match(T__22);
				setState(138);
				type();
				setState(139);
				match(T__15);
				setState(140);
				match(TEXT);
				setState(141);
				match(T__23);
				setState(142);
				match(T__22);
				setState(143);
				type();
				setState(144);
				match(T__24);
				setState(145);
				readFunction();
				setState(146);
				match(T__12);
				}
				break;
			case 2:
				_localctx = new SetContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(148);
				match(T__22);
				setState(149);
				type();
				setState(150);
				match(T__15);
				setState(151);
				match(TEXT);
				setState(152);
				match(T__23);
				setState(153);
				setLiteral();
				}
				break;
			case 3:
				_localctx = new SetDeclContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(155);
				match(T__22);
				setState(156);
				type();
				setState(157);
				match(T__15);
				setState(158);
				match(TEXT);
				}
				break;
			case 4:
				_localctx = new VarReadContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(160);
				match(TEXT);
				setState(161);
				match(T__23);
				setState(162);
				match(T__22);
				setState(163);
				type();
				setState(164);
				match(T__24);
				setState(165);
				readFunction();
				setState(166);
				match(T__12);
				}
				break;
			case 5:
				_localctx = new VarContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(168);
				type();
				setState(169);
				match(TEXT);
				setState(170);
				match(T__23);
				setState(171);
				expr(0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ReadFunctionContext extends ParserRuleContext {
		public TerminalNode STRING() { return getToken(setlangParser.STRING, 0); }
		public ReadFunctionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_readFunction; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterReadFunction(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitReadFunction(this);
		}
	}

	public final ReadFunctionContext readFunction() throws RecognitionException {
		ReadFunctionContext _localctx = new ReadFunctionContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_readFunction);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(175);
			match(T__25);
			setState(176);
			match(STRING);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class AssignmentContext extends ParserRuleContext {
		public TerminalNode TEXT() { return getToken(setlangParser.TEXT, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AssignmentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assignment; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterAssignment(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitAssignment(this);
		}
	}

	public final AssignmentContext assignment() throws RecognitionException {
		AssignmentContext _localctx = new AssignmentContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_assignment);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(178);
			match(TEXT);
			setState(179);
			match(T__23);
			setState(180);
			expr(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class TypeContext extends ParserRuleContext {
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitType(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(182);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 939524096L) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SetLiteralContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public SetLiteralContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_setLiteral; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterSetLiteral(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitSetLiteral(this);
		}
	}

	public final SetLiteralContext setLiteral() throws RecognitionException {
		SetLiteralContext _localctx = new SetLiteralContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_setLiteral);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(184);
			match(T__29);
			setState(185);
			expr(0);
			setState(190);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__30) {
				{
				{
				setState(186);
				match(T__30);
				setState(187);
				expr(0);
				}
				}
				setState(192);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(193);
			match(T__31);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprContext extends ParserRuleContext {
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprSetLiteralContext extends ExprContext {
		public SetLiteralContext setLiteral() {
			return getRuleContext(SetLiteralContext.class,0);
		}
		public ExprSetLiteralContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterExprSetLiteral(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitExprSetLiteral(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprLitContext extends ExprContext {
		public LiteralContext literal() {
			return getRuleContext(LiteralContext.class,0);
		}
		public ExprLitContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterExprLit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitExprLit(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprConcatContext extends ExprContext {
		public TerminalNode STRING() { return getToken(setlangParser.STRING, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprConcatContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterExprConcat(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitExprConcat(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprTextFuncContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprTextFuncContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterExprTextFunc(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitExprTextFunc(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprSumSubContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ExprSumSubContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterExprSumSub(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitExprSumSub(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprEmptySetContext extends ExprContext {
		public ExprEmptySetContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterExprEmptySet(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitExprEmptySet(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprMultDivContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ExprMultDivContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterExprMultDiv(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitExprMultDiv(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprTextContext extends ExprContext {
		public TerminalNode TEXT() { return getToken(setlangParser.TEXT, 0); }
		public ExprTextContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterExprText(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitExprText(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprSetConstContext extends ExprContext {
		public SetConstructorContext setConstructor() {
			return getRuleContext(SetConstructorContext.class,0);
		}
		public ExprSetConstContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterExprSetConst(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitExprSetConst(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprParContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprParContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterExprPar(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitExprPar(this);
		}
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 24;
		enterRecursionRule(_localctx, 24, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(213);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,15,_ctx) ) {
			case 1:
				{
				_localctx = new ExprParContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(196);
				match(T__11);
				setState(197);
				expr(0);
				setState(198);
				match(T__12);
				}
				break;
			case 2:
				{
				_localctx = new ExprConcatContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(200);
				match(STRING);
				setState(201);
				match(T__36);
				setState(202);
				expr(7);
				}
				break;
			case 3:
				{
				_localctx = new ExprSetLiteralContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(203);
				setLiteral();
				}
				break;
			case 4:
				{
				_localctx = new ExprTextContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(204);
				match(TEXT);
				}
				break;
			case 5:
				{
				_localctx = new ExprLitContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(205);
				literal();
				}
				break;
			case 6:
				{
				_localctx = new ExprSetConstContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(206);
				setConstructor();
				}
				break;
			case 7:
				{
				_localctx = new ExprEmptySetContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(207);
				match(T__38);
				}
				break;
			case 8:
				{
				_localctx = new ExprTextFuncContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(208);
				match(T__28);
				setState(209);
				match(T__11);
				setState(210);
				expr(0);
				setState(211);
				match(T__12);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(223);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,17,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(221);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
					case 1:
						{
						_localctx = new ExprMultDivContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(215);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(216);
						((ExprMultDivContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 128849018880L) != 0)) ) {
							((ExprMultDivContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(217);
						expr(10);
						}
						break;
					case 2:
						{
						_localctx = new ExprSumSubContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(218);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(219);
						((ExprSumSubContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__36 || _la==T__37) ) {
							((ExprSumSubContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(220);
						expr(9);
						}
						break;
					}
					} 
				}
				setState(225);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,17,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SetConstructorContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ReadFunctionContext readFunction() {
			return getRuleContext(ReadFunctionContext.class,0);
		}
		public SetConstructorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_setConstructor; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterSetConstructor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitSetConstructor(this);
		}
	}

	public final SetConstructorContext setConstructor() throws RecognitionException {
		SetConstructorContext _localctx = new SetConstructorContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_setConstructor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(226);
			match(T__22);
			setState(227);
			type();
			setState(228);
			match(T__15);
			setState(229);
			match(T__11);
			setState(230);
			readFunction();
			setState(231);
			match(T__12);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class LiteralContext extends ParserRuleContext {
		public LiteralContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_literal; }
	 
		public LiteralContext() { }
		public void copyFrom(LiteralContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class RealLitContext extends LiteralContext {
		public TerminalNode REAL() { return getToken(setlangParser.REAL, 0); }
		public RealLitContext(LiteralContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterRealLit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitRealLit(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IntLitContext extends LiteralContext {
		public TerminalNode INT() { return getToken(setlangParser.INT, 0); }
		public IntLitContext(LiteralContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterIntLit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitIntLit(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringLitContext extends LiteralContext {
		public TerminalNode STRING() { return getToken(setlangParser.STRING, 0); }
		public StringLitContext(LiteralContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterStringLit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitStringLit(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TextLitContext extends LiteralContext {
		public TerminalNode TEXT() { return getToken(setlangParser.TEXT, 0); }
		public TextLitContext(LiteralContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).enterTextLit(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof setlangListener ) ((setlangListener)listener).exitTextLit(this);
		}
	}

	public final LiteralContext literal() throws RecognitionException {
		LiteralContext _localctx = new LiteralContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_literal);
		try {
			setState(237);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case INT:
				_localctx = new IntLitContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(233);
				match(INT);
				}
				break;
			case REAL:
				_localctx = new RealLitContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(234);
				match(REAL);
				}
				break;
			case STRING:
				_localctx = new StringLitContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(235);
				match(STRING);
				}
				break;
			case TEXT:
				_localctx = new TextLitContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(236);
				match(TEXT);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 6:
			return booleanExpr_sempred((BooleanExprContext)_localctx, predIndex);
		case 12:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean booleanExpr_sempred(BooleanExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 3);
		case 1:
			return precpred(_ctx, 2);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 2:
			return precpred(_ctx, 9);
		case 3:
			return precpred(_ctx, 8);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001.\u00f0\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0001\u0000\u0001\u0000"+
		"\u0001\u0000\u0005\u0000\"\b\u0000\n\u0000\f\u0000%\t\u0000\u0001\u0000"+
		"\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0003\u0001/\b\u0001\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0004\u0001\u0004\u0001\u0004"+
		"\u0001\u0004\u0005\u0004;\b\u0004\n\u0004\f\u0004>\t\u0004\u0001\u0004"+
		"\u0001\u0004\u0005\u0004B\b\u0004\n\u0004\f\u0004E\t\u0004\u0003\u0004"+
		"G\b\u0004\u0001\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0005\u0005"+
		"M\b\u0005\n\u0005\f\u0005P\t\u0005\u0001\u0005\u0001\u0005\u0001\u0005"+
		"\u0001\u0005\u0005\u0005V\b\u0005\n\u0005\f\u0005Y\t\u0005\u0001\u0005"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0005\u0005_\b\u0005\n\u0005\f\u0005"+
		"b\t\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0005\u0005"+
		"h\b\u0005\n\u0005\f\u0005k\t\u0005\u0001\u0005\u0001\u0005\u0003\u0005"+
		"o\b\u0005\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006"+
		"\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006\u0001\u0006"+
		"\u0001\u0006\u0003\u0006}\b\u0006\u0001\u0006\u0001\u0006\u0001\u0006"+
		"\u0001\u0006\u0001\u0006\u0001\u0006\u0005\u0006\u0085\b\u0006\n\u0006"+
		"\f\u0006\u0088\t\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0003\u0007\u00ae\b\u0007\u0001\b\u0001\b\u0001"+
		"\b\u0001\t\u0001\t\u0001\t\u0001\t\u0001\n\u0001\n\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0005\u000b\u00bd\b\u000b\n\u000b\f\u000b\u00c0"+
		"\t\u000b\u0001\u000b\u0001\u000b\u0001\f\u0001\f\u0001\f\u0001\f\u0001"+
		"\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001"+
		"\f\u0001\f\u0001\f\u0001\f\u0001\f\u0003\f\u00d6\b\f\u0001\f\u0001\f\u0001"+
		"\f\u0001\f\u0001\f\u0001\f\u0005\f\u00de\b\f\n\f\f\f\u00e1\t\f\u0001\r"+
		"\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\u000e\u0001\u000e"+
		"\u0001\u000e\u0001\u000e\u0003\u000e\u00ee\b\u000e\u0001\u000e\u0000\u0002"+
		"\f\u0018\u000f\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016"+
		"\u0018\u001a\u001c\u0000\u0004\u0001\u0000\u000e\u0013\u0001\u0000\u001b"+
		"\u001d\u0001\u0000!$\u0001\u0000%&\u0104\u0000#\u0001\u0000\u0000\u0000"+
		"\u0002.\u0001\u0000\u0000\u0000\u00040\u0001\u0000\u0000\u0000\u00063"+
		"\u0001\u0000\u0000\u0000\b6\u0001\u0000\u0000\u0000\nn\u0001\u0000\u0000"+
		"\u0000\f|\u0001\u0000\u0000\u0000\u000e\u00ad\u0001\u0000\u0000\u0000"+
		"\u0010\u00af\u0001\u0000\u0000\u0000\u0012\u00b2\u0001\u0000\u0000\u0000"+
		"\u0014\u00b6\u0001\u0000\u0000\u0000\u0016\u00b8\u0001\u0000\u0000\u0000"+
		"\u0018\u00d5\u0001\u0000\u0000\u0000\u001a\u00e2\u0001\u0000\u0000\u0000"+
		"\u001c\u00ed\u0001\u0000\u0000\u0000\u001e\u001f\u0003\u0002\u0001\u0000"+
		"\u001f \u0005\u0001\u0000\u0000 \"\u0001\u0000\u0000\u0000!\u001e\u0001"+
		"\u0000\u0000\u0000\"%\u0001\u0000\u0000\u0000#!\u0001\u0000\u0000\u0000"+
		"#$\u0001\u0000\u0000\u0000$&\u0001\u0000\u0000\u0000%#\u0001\u0000\u0000"+
		"\u0000&\'\u0005\u0000\u0000\u0001\'\u0001\u0001\u0000\u0000\u0000(/\u0003"+
		"\u000e\u0007\u0000)/\u0003\u0012\t\u0000*/\u0003\u0006\u0003\u0000+/\u0003"+
		"\u0004\u0002\u0000,/\u0003\b\u0004\u0000-/\u0003\n\u0005\u0000.(\u0001"+
		"\u0000\u0000\u0000.)\u0001\u0000\u0000\u0000.*\u0001\u0000\u0000\u0000"+
		".+\u0001\u0000\u0000\u0000.,\u0001\u0000\u0000\u0000.-\u0001\u0000\u0000"+
		"\u0000/\u0003\u0001\u0000\u0000\u000001\u0005\u0002\u0000\u000012\u0003"+
		"\u0018\f\u00002\u0005\u0001\u0000\u0000\u000034\u0005\u0003\u0000\u0000"+
		"45\u0003\u0018\f\u00005\u0007\u0001\u0000\u0000\u000067\u0005\u0004\u0000"+
		"\u000078\u0003\f\u0006\u00008<\u0005\u0005\u0000\u00009;\u0003\u0002\u0001"+
		"\u0000:9\u0001\u0000\u0000\u0000;>\u0001\u0000\u0000\u0000<:\u0001\u0000"+
		"\u0000\u0000<=\u0001\u0000\u0000\u0000=F\u0001\u0000\u0000\u0000><\u0001"+
		"\u0000\u0000\u0000?C\u0005\u0006\u0000\u0000@B\u0003\u0002\u0001\u0000"+
		"A@\u0001\u0000\u0000\u0000BE\u0001\u0000\u0000\u0000CA\u0001\u0000\u0000"+
		"\u0000CD\u0001\u0000\u0000\u0000DG\u0001\u0000\u0000\u0000EC\u0001\u0000"+
		"\u0000\u0000F?\u0001\u0000\u0000\u0000FG\u0001\u0000\u0000\u0000GH\u0001"+
		"\u0000\u0000\u0000HI\u0005\u0007\u0000\u0000I\t\u0001\u0000\u0000\u0000"+
		"JN\u0005\b\u0000\u0000KM\u0003\u0002\u0001\u0000LK\u0001\u0000\u0000\u0000"+
		"MP\u0001\u0000\u0000\u0000NL\u0001\u0000\u0000\u0000NO\u0001\u0000\u0000"+
		"\u0000OQ\u0001\u0000\u0000\u0000PN\u0001\u0000\u0000\u0000QR\u0005\t\u0000"+
		"\u0000RS\u0003\f\u0006\u0000SW\u0005\n\u0000\u0000TV\u0003\u0002\u0001"+
		"\u0000UT\u0001\u0000\u0000\u0000VY\u0001\u0000\u0000\u0000WU\u0001\u0000"+
		"\u0000\u0000WX\u0001\u0000\u0000\u0000XZ\u0001\u0000\u0000\u0000YW\u0001"+
		"\u0000\u0000\u0000Z[\u0005\u0007\u0000\u0000[o\u0001\u0000\u0000\u0000"+
		"\\`\u0005\b\u0000\u0000]_\u0003\u0002\u0001\u0000^]\u0001\u0000\u0000"+
		"\u0000_b\u0001\u0000\u0000\u0000`^\u0001\u0000\u0000\u0000`a\u0001\u0000"+
		"\u0000\u0000ac\u0001\u0000\u0000\u0000b`\u0001\u0000\u0000\u0000cd\u0005"+
		"\u000b\u0000\u0000de\u0003\f\u0006\u0000ei\u0005\n\u0000\u0000fh\u0003"+
		"\u0002\u0001\u0000gf\u0001\u0000\u0000\u0000hk\u0001\u0000\u0000\u0000"+
		"ig\u0001\u0000\u0000\u0000ij\u0001\u0000\u0000\u0000jl\u0001\u0000\u0000"+
		"\u0000ki\u0001\u0000\u0000\u0000lm\u0005\u0007\u0000\u0000mo\u0001\u0000"+
		"\u0000\u0000nJ\u0001\u0000\u0000\u0000n\\\u0001\u0000\u0000\u0000o\u000b"+
		"\u0001\u0000\u0000\u0000pq\u0006\u0006\uffff\uffff\u0000qr\u0005\f\u0000"+
		"\u0000rs\u0003\f\u0006\u0000st\u0005\r\u0000\u0000t}\u0001\u0000\u0000"+
		"\u0000uv\u0003\u0018\f\u0000vw\u0007\u0000\u0000\u0000wx\u0003\u0018\f"+
		"\u0000x}\u0001\u0000\u0000\u0000yz\u0005\u0014\u0000\u0000z}\u0003\f\u0006"+
		"\u0004{}\u0005(\u0000\u0000|p\u0001\u0000\u0000\u0000|u\u0001\u0000\u0000"+
		"\u0000|y\u0001\u0000\u0000\u0000|{\u0001\u0000\u0000\u0000}\u0086\u0001"+
		"\u0000\u0000\u0000~\u007f\n\u0003\u0000\u0000\u007f\u0080\u0005\u0015"+
		"\u0000\u0000\u0080\u0085\u0003\f\u0006\u0004\u0081\u0082\n\u0002\u0000"+
		"\u0000\u0082\u0083\u0005\u0016\u0000\u0000\u0083\u0085\u0003\f\u0006\u0003"+
		"\u0084~\u0001\u0000\u0000\u0000\u0084\u0081\u0001\u0000\u0000\u0000\u0085"+
		"\u0088\u0001\u0000\u0000\u0000\u0086\u0084\u0001\u0000\u0000\u0000\u0086"+
		"\u0087\u0001\u0000\u0000\u0000\u0087\r\u0001\u0000\u0000\u0000\u0088\u0086"+
		"\u0001\u0000\u0000\u0000\u0089\u008a\u0005\u0017\u0000\u0000\u008a\u008b"+
		"\u0003\u0014\n\u0000\u008b\u008c\u0005\u0010\u0000\u0000\u008c\u008d\u0005"+
		",\u0000\u0000\u008d\u008e\u0005\u0018\u0000\u0000\u008e\u008f\u0005\u0017"+
		"\u0000\u0000\u008f\u0090\u0003\u0014\n\u0000\u0090\u0091\u0005\u0019\u0000"+
		"\u0000\u0091\u0092\u0003\u0010\b\u0000\u0092\u0093\u0005\r\u0000\u0000"+
		"\u0093\u00ae\u0001\u0000\u0000\u0000\u0094\u0095\u0005\u0017\u0000\u0000"+
		"\u0095\u0096\u0003\u0014\n\u0000\u0096\u0097\u0005\u0010\u0000\u0000\u0097"+
		"\u0098\u0005,\u0000\u0000\u0098\u0099\u0005\u0018\u0000\u0000\u0099\u009a"+
		"\u0003\u0016\u000b\u0000\u009a\u00ae\u0001\u0000\u0000\u0000\u009b\u009c"+
		"\u0005\u0017\u0000\u0000\u009c\u009d\u0003\u0014\n\u0000\u009d\u009e\u0005"+
		"\u0010\u0000\u0000\u009e\u009f\u0005,\u0000\u0000\u009f\u00ae\u0001\u0000"+
		"\u0000\u0000\u00a0\u00a1\u0005,\u0000\u0000\u00a1\u00a2\u0005\u0018\u0000"+
		"\u0000\u00a2\u00a3\u0005\u0017\u0000\u0000\u00a3\u00a4\u0003\u0014\n\u0000"+
		"\u00a4\u00a5\u0005\u0019\u0000\u0000\u00a5\u00a6\u0003\u0010\b\u0000\u00a6"+
		"\u00a7\u0005\r\u0000\u0000\u00a7\u00ae\u0001\u0000\u0000\u0000\u00a8\u00a9"+
		"\u0003\u0014\n\u0000\u00a9\u00aa\u0005,\u0000\u0000\u00aa\u00ab\u0005"+
		"\u0018\u0000\u0000\u00ab\u00ac\u0003\u0018\f\u0000\u00ac\u00ae\u0001\u0000"+
		"\u0000\u0000\u00ad\u0089\u0001\u0000\u0000\u0000\u00ad\u0094\u0001\u0000"+
		"\u0000\u0000\u00ad\u009b\u0001\u0000\u0000\u0000\u00ad\u00a0\u0001\u0000"+
		"\u0000\u0000\u00ad\u00a8\u0001\u0000\u0000\u0000\u00ae\u000f\u0001\u0000"+
		"\u0000\u0000\u00af\u00b0\u0005\u001a\u0000\u0000\u00b0\u00b1\u0005)\u0000"+
		"\u0000\u00b1\u0011\u0001\u0000\u0000\u0000\u00b2\u00b3\u0005,\u0000\u0000"+
		"\u00b3\u00b4\u0005\u0018\u0000\u0000\u00b4\u00b5\u0003\u0018\f\u0000\u00b5"+
		"\u0013\u0001\u0000\u0000\u0000\u00b6\u00b7\u0007\u0001\u0000\u0000\u00b7"+
		"\u0015\u0001\u0000\u0000\u0000\u00b8\u00b9\u0005\u001e\u0000\u0000\u00b9"+
		"\u00be\u0003\u0018\f\u0000\u00ba\u00bb\u0005\u001f\u0000\u0000\u00bb\u00bd"+
		"\u0003\u0018\f\u0000\u00bc\u00ba\u0001\u0000\u0000\u0000\u00bd\u00c0\u0001"+
		"\u0000\u0000\u0000\u00be\u00bc\u0001\u0000\u0000\u0000\u00be\u00bf\u0001"+
		"\u0000\u0000\u0000\u00bf\u00c1\u0001\u0000\u0000\u0000\u00c0\u00be\u0001"+
		"\u0000\u0000\u0000\u00c1\u00c2\u0005 \u0000\u0000\u00c2\u0017\u0001\u0000"+
		"\u0000\u0000\u00c3\u00c4\u0006\f\uffff\uffff\u0000\u00c4\u00c5\u0005\f"+
		"\u0000\u0000\u00c5\u00c6\u0003\u0018\f\u0000\u00c6\u00c7\u0005\r\u0000"+
		"\u0000\u00c7\u00d6\u0001\u0000\u0000\u0000\u00c8\u00c9\u0005)\u0000\u0000"+
		"\u00c9\u00ca\u0005%\u0000\u0000\u00ca\u00d6\u0003\u0018\f\u0007\u00cb"+
		"\u00d6\u0003\u0016\u000b\u0000\u00cc\u00d6\u0005,\u0000\u0000\u00cd\u00d6"+
		"\u0003\u001c\u000e\u0000\u00ce\u00d6\u0003\u001a\r\u0000\u00cf\u00d6\u0005"+
		"\'\u0000\u0000\u00d0\u00d1\u0005\u001d\u0000\u0000\u00d1\u00d2\u0005\f"+
		"\u0000\u0000\u00d2\u00d3\u0003\u0018\f\u0000\u00d3\u00d4\u0005\r\u0000"+
		"\u0000\u00d4\u00d6\u0001\u0000\u0000\u0000\u00d5\u00c3\u0001\u0000\u0000"+
		"\u0000\u00d5\u00c8\u0001\u0000\u0000\u0000\u00d5\u00cb\u0001\u0000\u0000"+
		"\u0000\u00d5\u00cc\u0001\u0000\u0000\u0000\u00d5\u00cd\u0001\u0000\u0000"+
		"\u0000\u00d5\u00ce\u0001\u0000\u0000\u0000\u00d5\u00cf\u0001\u0000\u0000"+
		"\u0000\u00d5\u00d0\u0001\u0000\u0000\u0000\u00d6\u00df\u0001\u0000\u0000"+
		"\u0000\u00d7\u00d8\n\t\u0000\u0000\u00d8\u00d9\u0007\u0002\u0000\u0000"+
		"\u00d9\u00de\u0003\u0018\f\n\u00da\u00db\n\b\u0000\u0000\u00db\u00dc\u0007"+
		"\u0003\u0000\u0000\u00dc\u00de\u0003\u0018\f\t\u00dd\u00d7\u0001\u0000"+
		"\u0000\u0000\u00dd\u00da\u0001\u0000\u0000\u0000\u00de\u00e1\u0001\u0000"+
		"\u0000\u0000\u00df\u00dd\u0001\u0000\u0000\u0000\u00df\u00e0\u0001\u0000"+
		"\u0000\u0000\u00e0\u0019\u0001\u0000\u0000\u0000\u00e1\u00df\u0001\u0000"+
		"\u0000\u0000\u00e2\u00e3\u0005\u0017\u0000\u0000\u00e3\u00e4\u0003\u0014"+
		"\n\u0000\u00e4\u00e5\u0005\u0010\u0000\u0000\u00e5\u00e6\u0005\f\u0000"+
		"\u0000\u00e6\u00e7\u0003\u0010\b\u0000\u00e7\u00e8\u0005\r\u0000\u0000"+
		"\u00e8\u001b\u0001\u0000\u0000\u0000\u00e9\u00ee\u0005*\u0000\u0000\u00ea"+
		"\u00ee\u0005+\u0000\u0000\u00eb\u00ee\u0005)\u0000\u0000\u00ec\u00ee\u0005"+
		",\u0000\u0000\u00ed\u00e9\u0001\u0000\u0000\u0000\u00ed\u00ea\u0001\u0000"+
		"\u0000\u0000\u00ed\u00eb\u0001\u0000\u0000\u0000\u00ed\u00ec\u0001\u0000"+
		"\u0000\u0000\u00ee\u001d\u0001\u0000\u0000\u0000\u0013#.<CFNW`in|\u0084"+
		"\u0086\u00ad\u00be\u00d5\u00dd\u00df\u00ed";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}