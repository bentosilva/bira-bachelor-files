#include "ex29.h"

int main(int argc, char *argv[]) {
	VendedorGerente *vg = new VendedorGerente();

	// erro n�o sabe qual salario
//	cout << "Salario = " << vg->getSalario() << endl; 

	//vg->funcao(); -> erro de compilacao

	//
	
	cout << "Salario herdado de vendedor = " 
		<< ((Vendedor *)vg)->getSalario() << endl;

	cout << "Salario herdado de gerente = " 
		<< ((Gerente *)vg)->getSalario() << endl;
		

 	// erro... qual funcao?
	//vg->funcao();
	/*
	((Vendedor *) vg)->funcao();
	((Gerente *) vg)->funcao();*/
}
