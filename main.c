#include <stdio.h>

int main(int argc, char **argv) {
	size_t arg = 0;
	
	if (argc <= 1) {
		puts("Hello, earth!");
	} else {
		fputs("Hello,", stdout);

		while (--argc) {
			putchar(' ');
			fputs(argv[++arg], stdout);
		}

		puts(", and also earth!");
	}

	return 0;
}
