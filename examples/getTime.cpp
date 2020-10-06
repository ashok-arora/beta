#include <getTime.hpp>
#include <iostream>

void func() {
    int a = 0;
    for (int i = 0; i < 10000000; i++) {
        a++;
    }
}

int main() {
    uint64 start = getTime();
    func();
    uint64 end = getTime();
    std::cout << "Execution Time: " << (end - start) << " milliseconds" << std::endl;
    return 0;
}