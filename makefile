all: bin/carBase

carBase: bin/carBase

bin/carBase: $(patsubst src/%.c, bin/%.o, $(wildcard src/*.c))
	gcc -std=c99 -Wall -Iinclude $^ -o $@

bin/%.o: src/%.c
	gcc -std=c99 -Wall -Iinclude -c $< -o $@

clear: clean

clean:
	rm -f bin/*.o bin/carBase

