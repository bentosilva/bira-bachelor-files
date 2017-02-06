#include "Person.h"
#include <malloc.h>

int main(int argc, char *argv[]) {

	//Person *p = new Person("joao", 10); // heap
	//Person *p = new Person("joao"); // heap
	Person *p = new Person(); // heap

	p->print();

	delete p; // liberar a memoria

	return 0;
}
