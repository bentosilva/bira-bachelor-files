public class Livro extends Item {
	private String isbn;

	public Livro(String nome, String isbn) {
		//this.setNome(nome);
		//super.setNome(nome);
		super(nome);
		this.isbn = isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getIsbn() {
		return this.isbn;
	}
}
