#include <assert.h>
#include <stdio.h>
#include "functions.h"  // include the header file

void test_get_value(void);
void maybeGL(void);

int main(void) {
    test_get_value();
    printf("All tests passed.\n");
    return 0;
}

void test_get_value(void) {
    assert(get_value() == 1);
}

