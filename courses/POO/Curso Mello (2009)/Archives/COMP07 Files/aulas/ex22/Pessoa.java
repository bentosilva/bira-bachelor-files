public class Pessoa {
	private String nome;
	private int sexo; // 0 - fem; 1 - mas; outras...
	protected int idade;

	public Pessoa(String nome, int sexo, int idade) {
		this.nome = nome;
		this.sexo = sexo;
		this.idade = idade;
	}

	public void setNome(String nome) { this.nome = nome; }
	public void setSexo(int sexo) { this.sexo = sexo; }
	public void setIdade(int idade) { this.idade = idade; }

	public String getNome() { return this.nome; }
	public int getSexo() { return this.sexo; }
	public int getIdade() { return this.idade; }
}
