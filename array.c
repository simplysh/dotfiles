#include <stdio.h>
#include <stdlib.h>

typedef struct {
	int *items;
	size_t count;
	size_t capacity;
} Numbers;

int main(void)
{
	Numbers n = {0};

	for (int i = 0; i < 10; i++) {
		if (n.count >= n.capacity) {
			if (n.capacity == 0) n.capacity = 128;
			n.capacity *= 2;
			n.items = realloc(n.items, n.capacity * sizeof(*n.items));
		}
		n.items[n.count++] = i;
	}

	for (size_t i = 0; i < n.count; i++) printf("%d\n", n.items[i]);

	return 0;
}
