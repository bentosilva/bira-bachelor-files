import org.apache.axis.client.Service;
import org.apache.axis.client.Call;
 
public class Cliente {
     public static void main(String[] args) throws Exception {
		String local = "http://localhost:8080/axis/Sort.jws";
		Call call = (Call) new Service().createCall();
		call.setTargetEndpointAddress(local);
		call.setOperationName("test02");
		Object[] param = new Object[]{ new Integer(5) };
		call.invoke(param);
	}
}
