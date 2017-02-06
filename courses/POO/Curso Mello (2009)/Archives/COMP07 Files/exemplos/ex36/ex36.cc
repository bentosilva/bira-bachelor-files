#include "ex36.h"

int main(int argc, char *argv[]) {
	int v = 10;
	X *a = new X(v);

	cout << "x global vale = " << x << endl;
	cout << "this->x vale = " << v << endl;

	cout << endl;

	cout << "f1 (this->x) = " << a->f1() << endl;
	cout << "f2 (x global) = " << a->f2() << endl;
	cout << "f3 (x local) = " << a->f3() << endl;
	cout << "f4 (this->x) = " << a->f4() << endl;
	cout << "f5 (x global) = " << a->f5() << endl;

	return 0;
}
