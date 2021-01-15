CC= gcc
AR= ar rcu
RANLIB=ranlib
CFLAGS= -O2 -g -Wall -Iinclude #-lm
SRC = $(wildcard src/*.c)
OBJ_FILES := $(addprefix obj/,$(notdir $(SRC:.c=.o)))
OUT = liblua.a
default: setup $(OUT)
setup:
	@mkdir -p obj

$(OUT): $(OBJ_FILES)
	@$(AR) $@ $^

obj/%.o: src/%.c
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf obj
