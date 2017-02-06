import org.apache.axis.client.Service;
import org.apache.axis.client.Call;
 
public class Cliente {
     public static void main(String[] args) throws Exception {
		// Endere�o, local onde encontra-se o Web Service
		String local = "http://localhost:8080/axis/Servico.jws";
		 
		// Criando e configurando o servi�o
		Call call = (Call) new Service().createCall();
		// Configurando o endere�o.
		call.setTargetEndpointAddress(local);
	       	// Marcando o m�todo a ser chamado. 
		call.setOperationName("soma");
	       
		// Par�metros da fun��o soma.
		Object[] param = new Object[]{new Integer(2),new Integer(4)};
	       	// Retorno da Fun��o
		Integer ret = (Integer)call.invoke(param);
		 
		// Imprime o resultado: ret = 2 + 4.
		System.out.println("Resultado da soma : " + ret);
	}
}
