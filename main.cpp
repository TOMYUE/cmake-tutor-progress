#include "main.h"

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
