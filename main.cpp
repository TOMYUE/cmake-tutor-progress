#include "main.h"

int main() {
    // set value
    float first_no {1.0}, second_no {2.0}, result_add, result_div, result_mul, result_sub;
    
    // calculate 
    result_add = add_float(first_no, second_no);
    result_div = div_float(first_no, second_no);
    result_mul = mul_float(first_no, second_no);
    result_sub = sub_float(first_no, second_no);

    // print values
    std::cout<< "Enter first number\t" << first_no<< "\n";
    std::cout<< "Enter second number\t" << second_no<< "\n";

    // print results
    print_res("add", result_add);
    print_res("div", result_div);
    print_res("mul", result_mul);
    print_res("sub", result_sub);

    return 0;
}
