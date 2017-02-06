package xmls;

import java.io.* ;
import java.util.* ;
import javax.xml.parsers.* ;
import org.xml.sax.* ;
import org.w3c.dom.* ;

public class TestDOMlibrary {

	public static void main(String args[]) {
		// Obtendo um parser DOM para o arquivo (false = sem checar DTD)
		Document doc = DOMlibrary.getLibrary().getDOM(args[0], false);

		// obtem elementos internos ao Documento (1.o n�vel -> Publications)
		Element dE = doc.getDocumentElement();
		// obtem elementos de segundo n�vel do tipo Book (uma lista)
		NodeList booklist = dE.getElementsByTagName("Book");

		//Sabemos o n�mero de Elements desta maneira:
		int bookCt = booklist.getLength();

		for (int i = 0; i < bookCt; i++) {
			//e podemos recuperar um determinado Elemento desta maneira:
			Element bookE = (Element) booklist.item(i);
			System.out.println(bookE);
		}
	}
}
