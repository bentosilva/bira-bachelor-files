package com.correios.core;

import com.correios.utils.*;
//import com.correios.database.*;

public class Correspondencia {

	public Correspondencia() {}
	public void teste() {
		//com.correios.database.Rota r = new com.correios.database.Rota();
		Rota r = new Rota();
		r.print();
	}

	public static void main(String args[]) {
		Correspondencia c = new Correspondencia();
		c.teste();
	}
}
