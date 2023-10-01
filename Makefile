all:
	clang++ -O0 -g3 -o main main.cpp
	./main

clean:
	rm -rf main main.dSYM