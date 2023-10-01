#!/bin/bash

# print message
echo "run main.cpp"
# compile executable
echo "clang++ main.cpp -o main -g3 -O0"
clang++ main.cpp -o main -g3 -O0
# run executable
echo "./main"
./main
