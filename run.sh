#!/bin/bash

echo "compile each into object file and compile into a executable"

# compile each cpp file into a *.o file (object files)
echo "clang++ -c -o float.o float.cpp\n
clang++ -c -o print.o print.cpp\n
clang++ -c -o main.o main.cpp\n"

clang++ -c -o float.o float.cpp
clang++ -c -o print.o print.cpp
clang++ -c -o main.o main.cpp

# link all object files into a single executable
echo "clang++ -g3 -O0 -o main main.o float.o print.o"
clang++ -g3 -O0 -o main main.o float.o print.o

# run
echo "./main"
./main