#include <iostream>
#include <stdio.h>

using namespace std;

class Celular {
	private:
		// atributos, propriedades ou vari�veis-membro
		int botoes;
		int connection;
	public:
		// m�todos
		void talk() { connection = 1; }
		void cancel() { connection = 0; }
};
