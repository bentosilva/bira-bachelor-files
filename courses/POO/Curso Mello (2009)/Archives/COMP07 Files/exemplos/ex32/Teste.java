public class Teste {
	public static void main(String args[]) {
		Funcionario f = new Funcionario("123", "Jo�o", "Rua abc", 100.23, 2);
		Gerente g = new Gerente("123", "Jo�o", "Rua abc", 100.23, 2, "depto");

		f.imprimir();
		g.imprimir();

		System.out.println("nome do funcion�rio = "+f.nome);
		System.out.println("n�mero de filhos do funcion�rio = "+f.nfilhos);
	}
}
