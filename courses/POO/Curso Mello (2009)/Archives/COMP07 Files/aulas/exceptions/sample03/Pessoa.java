public class Pessoa {
	private String cpf;
	private String nome;

	public Pessoa(String cpf, String nome) throws CPFInvalid, CPFLength {
		this.cpf = cpf;
		this.nome = nome;
		verificaCpf(this.cpf);
	}

	public String getNome() { return this.nome; }
	public String getCpf() { return this.cpf; }

	public void setCpf(String cpf) { this.cpf = cpf; }
	public void setNome(String nome) { this.nome = nome; }

	private void verificaCpf(String cpf) throws CPFLength, CPFInvalid {
		 int cont = 11, soma = 0, mult = 11;  
		 int[] var = new int[11];  

		 // Verifica se o CPF cont�m menos de 11 d�gitos.  
		 while(cpf.length() < 11) {  
			 throw new CPFLength("Tamanho do CPF menor que 11");
		 }  
		   
		 // Recebe os n�meros e realiza a multiplica��o e soma.  
		 for(int i = 0; i < 11; i++) {  
		     var[i] = Integer.parseInt(""+cpf.charAt(i));  
		     if(i<9) soma += (var[i] * --mult);  
		 }  
		   
		 // Cria o primeiro d�gito verificador.  
		 int resto = soma%11;  
		 if(resto < 2) {  
		     var[9] = 0;  
		 } else {   
		     var[9] = 11 - resto;  
		 }      
		   
		 // Reinicia os valores.  
		 soma = 0;  
		 mult = 11;    
		   
		 // Realiza a multiplica��o e soma do segundo d�gito.  
		 for(int i = 0; i < 10; i++) soma += var[i] * mult--;  
		   
		 // Cria o segundo d�gito verificador.  
		 resto = soma%11;  
		 if(resto < 2) {  
		     var[10] = 0;  
		 } else {   
		     var[10] = 11 - resto;  
		 }  
		   
		 int v1 = Integer.parseInt(""+cpf.charAt(9));  
		 int v2 = Integer.parseInt(""+cpf.charAt(10));  
		   
		 // Confere os d�gitos criados com os d�gitados, se forem diferentes  
		 // informa que o CPF � inv�lido.  
		 if(v1 != var[9] || v2 != var[10]) {  
			 throw new CPFInvalid("Os d�gitos verificadores n�o est�o corretos!");
		 } 
	}
}

class CPFLength extends Exception {
	public CPFLength(String message) {
		super(message);
	}
}

class CPFInvalid extends Exception {
	public CPFInvalid(String message) {
		super(message);
	}
}
