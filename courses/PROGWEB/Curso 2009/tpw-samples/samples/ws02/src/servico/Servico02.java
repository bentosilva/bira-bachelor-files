import java.net.*;
import java.io.*;
import java.util.*;
import javax.xml.parsers.*;
import org.xml.sax.*;
import org.xml.sax.helpers.*;

public class Servico02 extends DefaultHandler {

    StringBuffer valor;

    String title;
    String link;
    String description;

    public Servico02() {
    	valor = new StringBuffer();
    }
    
    /** Read XML from input stream and parse, generating SAX events */
    public void readXML(InputStream inStream) {
        try {
            System.setProperty("org.xml.sax.driver", "org.apache.crimson.parser.XMLReaderImpl");
            XMLReader reader = XMLReaderFactory.createXMLReader();
            reader.setContentHandler(this);
            reader.parse(new InputSource(new InputStreamReader(inStream)));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void startDocument() throws SAXException {
    }

    public void endDocument() throws SAXException {
    }

    public void characters(char[] buffer, int start, int length) {
	    valor.append(buffer, start, length);
    }
    
    public void startElement (String namespaceURI,
                              String localName,
                              String qName, 
                              Attributes atts)
        throws SAXException {

	valor.setLength(0);
    }

    public void endElement(String namespaceURI, 
                           String localName,
                           String qName)
        throws SAXException {

	if (qName.equals("title")) {
		title = valor.toString();
	} else if (qName.equals("link")) {
		link = valor.toString();
	} else if (qName.equals("description")) {
		description = valor.toString();
	} else if (qName.equals("item")) {
		System.out.println("Terminou um item\nTitulo = "+title+"\nLink = "+link+"\nDescri��o = "+description);
	}
	valor.setLength(0);
    }

    public void listItems(String url) throws Exception {
		URL site = new URL(url);
		URLConnection sld = site.openConnection();
		//
		// this.readXML(sld.getInputStream());
		//
		
		BufferedReader in = new BufferedReader(
				new InputStreamReader(sld.getInputStream()));
		BufferedWriter out = 
			new BufferedWriter(new FileWriter("/tmp/file.xml"));
		String inputLine;

		while ((inputLine = in.readLine()) != null)  {
			out.write(inputLine+"\n");
		}
		out.close();
		in.close();

		InputStream ins = new BufferedInputStream(
				new FileInputStream(new File("/tmp/file.xml")));
				
		this.readXML(ins);
    }
}
