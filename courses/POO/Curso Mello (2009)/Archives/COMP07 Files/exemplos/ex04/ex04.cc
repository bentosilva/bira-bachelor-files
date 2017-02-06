#include <iostream>
#include <stdarg.h>

using namespace std;

void escrever(const char* str, ...)
{
	va_list lista;
	const char *params = str;
	int count = 0;

	while (*params != '\0') {
		if (*params == '%') {
			params++;
			if (*params == 'd') {
				count++;
			}
		}
		params++;
	}

	cout << "n�mero de argumentos = " << count << endl;

	va_start(lista, count); 

	while (*str != '\0') {

		switch (*str) {
			case '%': 
				str++;
				switch (*str) {
					case 'd':
						cout << va_arg(lista, int);
						break;
				}
				break;
			default:
				cout << *str;
				break;
		}
		str++;
	}

	va_end(lista); // Closing macro
}

int main(int argc, char *argv[]) {

	escrever("teste %d %d\n", 5, 6);
	escrever("ol� %d %d %d\n", 5, 6, 7);
	return 0;
}
