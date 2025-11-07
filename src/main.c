#include <stdio.h>
#include "../thirdparty/rapidhash/rapidhash.h"

int main(int argc, char** argv) {
    if (argc != 2) {
        fprintf(stderr, "usage: rapidhash [target-value]\n");
        return 1;
    }

    uint64_t hash = rapidhash(argv[1], strlen(argv[1]));
    printf("%llu\n", hash);

    return 0;
}