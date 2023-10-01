#include <iostream>

using namespace std;

// add, sub, mul, div
float add_float(float a, float b);
float sub_float(float a, float b);
float mul_float(float a, float b);
float div_float(float a, float b);

// print results
void print_res(string res_type, float res_val);

int main() {
    // set value
    float first_no {1.0}, second_no {2.0}, result_add, result_div;
    
    // calculate 
    result_add = add_float(first_no, second_no);
    result_div = div_float(first_no, second_no);

    // print values
    std::cout<< "Enter first number\t" << first_no<< "\n";
    std::cout<< "Enter second number\t" << second_no<< "\n";

    // print results
    print_res("add", result_add);
    print_res("div", result_div);

    return 0;
}

float add_float(float a, float b) {
    return a + b;
}

float sub_float(float a, float b) {
    return a - b;
}

float mul_float(float a, float b) {
    return a * b;
}

float div_float(float a, float b) {
    return a / b;
}

void print_res(string res_type, float res_val) {
    std::cout<< res_type<< " result:\t"<< res_val<< "\n";
}
