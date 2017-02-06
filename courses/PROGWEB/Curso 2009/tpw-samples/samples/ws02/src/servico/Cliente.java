package servico;

import java.util.*;

import org.apache.axis.client.Service;
import org.apache.axis.client.Call;
import org.apache.axis.utils.Options;

import javax.xml.namespace.QName;
import javax.xml.rpc.ParameterMode;
 
public class Cliente {
     public static void main(String[] args) throws Exception {

		// Endere�o, local onde encontra-se o Web Service
		String local = "http://localhost:8080/axis/Servico02.jws";
		 
		// Criando e configurando o servi�o
		Call call = (Call) new Service().createCall();
		// Configurando o endere�o.
		call.setTargetEndpointAddress(local);
	       	// Marcando o m�todo a ser chamado. 
		call.setOperationName("listItems");

		// Par�metros da fun��o soma.
		Object[] param = new Object[]{new String("http://rss.slashdot.org/Slashdot/slashdot")};
	       	// Retorno da Fun��o
		call.invoke(param);
	}
}
