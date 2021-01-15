CXX	= g++
OUT = ./libgame.a

IFLAGS = -Iinclude
CFLAGS  = $(IFLAGS) -Wall -O2 -pipe -mtune=i686 -fno-exceptions

CC_FILES := $(wildcard src/*.cc)
OBJ_FILES := $(addprefix obj/,$(notdir $(CC_FILES:.cc=.o)))

default: setup $(OUT)
setup:
	@mkdir -p obj

$(OUT): $(OBJ_FILES)
	@$(AR) cru $@ $^

obj/%.o: src/%.cc
	@$(CXX) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf obj $(OUT)


