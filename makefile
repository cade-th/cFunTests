# Variables
CC = gcc
CFLAGS = -Wall -Wextra -std=c11
TARGET = simulator
TEST_TARGET = test_executable

# Targets and Recipes
all: $(TARGET)

$(TARGET): main.o functions.o
	$(CC) $(CFLAGS) -o $@ $^

main.o: main.c functions.h
	$(CC) $(CFLAGS) -c $< -o $@

functions.o: functions.c functions.h
	$(CC) $(CFLAGS) -c $< -o $@

test: $(TEST_TARGET)
	./$(TEST_TARGET)

$(TEST_TARGET): test.o functions.o
	$(CC) $(CFLAGS) -o $@ $^

test.o: test.c functions.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o $(TARGET) $(TEST_TARGET)

