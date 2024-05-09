#include <stdio.h>
#include <stdbool.h>

void append(char *source, char *dest, int *len) {
    char separator = '-';
    bool in_between = false;

    if (*len > 0) *(dest + (*len)++) = separator;

    while (*source) {
        char c = *source++;

        if ((c >= 'a' && c <= 'z') || (c >= '0' && c <= '9')) {
            *(dest + (*len)++) = c;
            in_between = false;
        } else if (c >= 'A' && c <= 'Z') {
            *(dest + (*len)++) = c + 32;
            in_between = false;
        } else if (c == '\'') {
           continue;
        } else {
            if (!in_between) *(dest + (*len)++) = separator;
            in_between = true;
        }
    }

    if(*(dest + *len - 1) == separator) *len = *len - 1;
}

int main(int argc, char *argv[]) {
    char out[1024];
    int len = 0;

    while (--argc > 0) append(*++argv, out, &len);

    out[len] = 0;
    puts(out);

    return 0;
}
