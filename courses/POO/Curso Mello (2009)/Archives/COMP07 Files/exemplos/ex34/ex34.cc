#include "ex34.h"

int main(int argc, char *argv[]) {
	Gerente *g = new Gerente("Jo�o", 10.23);
	g->setSalario(200.20);
	g->testarAcesso();
}
