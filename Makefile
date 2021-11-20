build: *.h *.c
	clang -L. -lruntime -Wall -pedantic -std=c99 *.c
run: build
	LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:. ./a.out -p 3 --mutexl
clean:
	rm -rf a.out *.log
