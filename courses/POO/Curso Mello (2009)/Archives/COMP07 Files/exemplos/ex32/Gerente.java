public class Gerente extends Funcionario {
	private String departamento;

	public Gerente(String cpf, String nome, 
			String endereco, double salario,
			int nfilhos, String departamento) {
		super(cpf, nome, endereco, salario, nfilhos);
		this.departamento = departamento;
	}

	public void imprimir() {
		//System.out.println(cpf);
		//System.out.println(nome);
		//System.out.println(endereco);
		System.out.println(salario);
		System.out.println(nfilhos);
		System.out.println(departamento);
		System.out.println("\n");
	}
}
