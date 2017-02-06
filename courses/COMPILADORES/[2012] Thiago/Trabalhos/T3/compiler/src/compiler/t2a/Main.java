package compiler.t2a;

import compiler.*;
import compiler.Compiler;
;
import java.io.FileNotFoundException;
import java.io.IOException;

/**
 * Interface em terminal de comandos do compilador.
 *
 * @version 2.0.2
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

		SourceCode source = new SourceCode();
		Compiler compiler = new CompilerImpl();
		ObjectCode object = null;

		//leitura do arquivo de código-fonte
		try {
			source.load(args[0]);
		} catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("Parametros: <arquivo fonte> [<arquivo objeto>]");
			return;
		} catch(FileNotFoundException e) {
			System.out.println("Arquivo \"" + args[0] + "\" nao encontrado.");
			return;
		} catch(IOException e) {
			System.out.println("Falha ao ler arquivo \"" + args[0] + "\".");
			return;
		}

		//compilação
		try {
			compiler.init(args);
			System.out.println("Compilando \"" + args[0] + "\"...");
			object = compiler.compile(source);
			System.out.println("Compilação bem-sucedida.");
		} catch(LexicalException e) {
			int line = e.getToken().getLine() + 1;
			int column = e.getToken().getColumn() + 1;
			System.out.printf("Erro léxico na linha %d, coluna %d: %s%n",
					line, column, e.getMessage());
			System.out.println("Compilação abortada.");
			return;
		} catch(SyntacticException e) {
			int line = e.getToken().getLine() + 1;
			int column = e.getToken().getColumn() + 1;
			System.out.printf(
					"Erro sintático na (linha %d, coluna %d): %s%n",
					line, column, e.getMessage());
			System.out.println("Compilação abortada.");
		} catch(CompilerException e) {
			e.printStackTrace();
			return;
		}

		//escrita do arquivo de "código-objeto" (fachada)
		try {
			if(args.length > 1 && object != null) {
				object.println();
				object.writeFile(args[1]);
				System.out.println("Escrito arquivo \"" + args[1] + "\".");
			}
		} catch(IOException e) {
			System.out.println("Falha ao escrever arquivo \"" + args[1] + "\".");
			return;
		}

        return;
    }

}
