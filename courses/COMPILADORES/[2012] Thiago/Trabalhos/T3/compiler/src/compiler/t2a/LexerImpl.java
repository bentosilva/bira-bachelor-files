package compiler.t2a;

import compiler.LexicalAnalyzer;
import compiler.SourceCode;
import compiler.Token;

import compiler.lexer.*;

import compiler.LexicalException;

/**
 * Analisador léxico do compilador.
 *
 * @version 2.0.2
 */
public class LexerImpl extends LexicalAnalyzer {

	/**
	 * Construtor vazio.
	 */
	public LexerImpl() {
		super();
	}

	/**
	 * {@inheritDoc} A posição do token ou do erro é definida.
	 */
	public Token next() throws LexicalException {
		SourceCode source = this.getSourceCode();
		StringBuilder sb = new StringBuilder();
		char c; State state; boolean stop;
		int line, column;

		line = source.getLineNumber();
		column = source.getColumnNumber();

		//executa o autômato
		stop = false;
		state = StartState.getInstance();
		while(source.hasNext() && !stop) {
			c = source.getchar();
			state.updateString(c, sb);
			state = state.next(c);
			if(state instanceof StopState)
				stop = true;

			//redefine a posição do token
			if(state instanceof StartState) {
				line = source.getLineNumber();
				column = source.getColumnNumber();
			}

		}

		//devolve um caracter ao buffer, caso o
		//autômato tenha efetuado forward-looking
		if(state.hasForwardLooked())
			source.ungetchar();

		try {
			//verifica se um identificador é uma palavra reservada
			Token token = state.getToken(sb.toString());
			token = checkKeyword(token);
			token.setPosition(line, column);
			return token;
		} catch(LexicalException e) {
			//intercepta para definir a localização do erro
			e.setPosition(line, column);
			throw e;
		}

	}

}
