public class Automovel {
	String placa;
	String marca;
	String modelo;
	int ano;

	public void set(String pl, String ma, String mo, int an) {
		placa = pl;
		marca = ma;
		modelo = mo;
		ano = an;
	}

	public void print() {
		System.out.println(placa+" "+marca+" "+modelo+" "+ano);
	}

	public static void main(String args[]) {
		Automovel a = new Automovel();
		a.set("ABC1234", "Ford", "Fiesta", 2005);
		a.print();
	}
}
