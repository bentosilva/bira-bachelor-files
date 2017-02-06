package org.usp.robotws;

import java.util.*;
import org.apache.axis.client.Service;
import org.apache.axis.client.Call;
import org.usp.news.*;
 
public class Cliente {
     public static void main(String[] args) throws Exception {
		// Endere�o, local onde encontra-se o Web Service
		String local = "http://localhost:8080/axis/ParserSAX.jws";
		 
		// Criando e configurando o servi�o
		Call call = (Call) new Service().createCall();
		// Configurando o endere�o.
		call.setTargetEndpointAddress(local);
	       	// Marcando o m�todo a ser chamado. 
		call.setOperationName("getNews");
	       
		// Par�metros da fun��o soma.
		Object[] param = new Object[]{new String("http://rss.slashdot.org/Slashdot/slashdot")};
	       	// Retorno da Fun��o
		Vector ret = (Vector)call.invoke(param);
		 
		for (int i = 0; i < ret.size(); i++) {
			String[] str = (String[]) ret.elementAt(i);
			RSS rss = new RSS(null, str[1], str[0], str[2]);
			System.out.println("title = "+rss.getTitle());
			System.out.println("link = "+rss.getLink());
			System.out.println("description = "+rss.getDescription());
			System.out.println();

			rss.insert();
		}
	}
}
