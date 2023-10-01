# simple Makefile syntax:
# ----------------------
# target: request
#     rule

float.o: float.cpp
	clang++ -c float.cpp

print.o: print.cpp
	clang++ -c print.cpp

main.o: main.cpp
	clang++ -c main.cpp

main: main.o float.o print.o
	clang++ -o main main.o float.o print.o

all: main

clean:
	rm -f *.o main