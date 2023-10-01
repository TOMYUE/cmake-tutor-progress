# simple Makefile syntax:
# ----------------------
# target: request
#     rule

# set variables in Makefile

# Define the C++ compiler to use, you can use g++ as well
CC = clang
CXX = clang++

# Define any compile-time flags
CXXFLAGS = -Wall -Werror -g3 -O0 -std=c++17

# The executable file that will be created
TARGET = float_caculator

# Define remove command and REMOVE flag
RM = rm
RMFLAG = -f

all: main
	./$(TARGET)

float.o: float.cpp
	$(CXX) -c float.cpp

print.o: print.cpp
	$(CXX) -c print.cpp

main.o: main.cpp
	$(CXX) -c main.cpp

main: main.o float.o print.o
	$(CXX) $(CXXFLAGS) -o $(TARGET) main.o float.o print.o

clean:
	$(RM) $(RMFLAG) *.o main
