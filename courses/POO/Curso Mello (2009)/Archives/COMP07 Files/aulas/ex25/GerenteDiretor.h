#ifndef _GERENTEDIRETOR_H_
#define _GERENTEDIRETOR_H_

#include "Gerente.h"
#include "Diretor.h"

class GerenteDiretor : public Gerente, Diretor {
	
	public:
		void imprime() {
			Gerente::test();
			Diretor::test();
		}

};

#endif
