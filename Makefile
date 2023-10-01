# simple Makefile syntax:
# ----------------------
# target: request
#     rule

#############################
# set variables in Makefile #
#############################

# Define the C++ compiler to use, you can use g++ as well
CC = clang
CXX = clang++

# Define any compile-time flags
CXXFLAGS = -Wall -Werror -g3 -O0 -std=c++17

# Define remove command and remove flag
RM = rm
RMFLAG = -f

# The executable file that will be created
TARGET = float_caculator

# The main source files
SRCS = float.cpp print.cpp main.cpp

# Define the C++ object files 
OBJS = $(SRCS:.cpp=.o)
# KEYPOINT: 
# OBJS = $(SRCS:.cpp=.o): This sets the object files. 
# It takes the list of source files, replaces the .cpp extension with .o, and assigns the result to OBJS.

# `@`means this line will be execute but not print to console
all: $(MAIN)
	@./$(TARGET)

# TODO: remove all these .o rules, replace with a more "concise" syntax below at line 47
# float.o: float.cpp
# 	$(CXX) -c float.cpp

# print.o: print.cpp
# 	$(CXX) -c print.cpp

# main.o: main.cpp
# 	$(CXX) -c main.cpp
.cpp.o:
	$(CXX) $(CXXFLAGS) -c $< -o $@

# $< means: the first prerequisite file
# $@ means: the target file 
# .cpp.o is a little strange, you can see this as a combination of all rules that from .cpp to .o,
# like below:
# main.o: main.cpp
# 	$(CXX) -c main.cpp
# so here `$<` is just means the first prerequisite "main.cpp", and the `$@` means the target "main.o"
$(MAIN):$(OBJS) 
	@echo $(CXX) $(CXXFLAGS) -o $(MAIN) $(OBJS) #The @ symbol before echo prevents make from printing the echo command itself.
	$(CXX) $(CXXFLAGS) -o $(MAIN) $(OBJS)


# .PHONY means this is not a real target,
# use .PHONY to avoid the name of the target and the name of the files in projects conflict,
# for example, if you name a file clean in the projects and it will bring hard to find errors when build. 
.PHONY: clean
clean:
	$(RM) $(RMFLAG) *.o *~ $(MAIN)
