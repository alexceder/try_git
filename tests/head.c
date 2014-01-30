#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

static void test_stupid() {
    assert(1 == 1 && "This should be equal!?");
}

int main() {
    test_stupid();

    printf("\n%c[1;32mAll tests passed successfully!\n", 27);
    return 0;
}
