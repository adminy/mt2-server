OUT = ./libthecore.a

IFLAGS = -Iinclude
CFLAGS  = $(IFLAGS) -Wall -O2 -pipe -mtune=i686 -g

C_FILES := $(wildcard src/*.c)
OBJ_FILES := $(addprefix obj/,$(notdir $(C_FILES:.c=.o)))

default: setup $(OUT)
setup:
	@mkdir -p obj

$(OUT): $(OBJ_FILES)
	@$(AR) $@ $^

obj/%.o: src/%.c
	@$(CXX) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf obj $(OUT)
