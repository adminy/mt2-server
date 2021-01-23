OUT = ./libserverkey.a

IFLAGS = -Iinclude
CFLAGS = $(IFLAGS) -Wall -O2 -pipe -mtune=i686 -D_THREAD_SAFE -fno-exceptions 

CPP_FILES := $(wildcard src/*.cpp)
OBJ_FILES := $(addprefix obj/,$(notdir $(CPP_FILES:.cpp=.o)))

default: setup $(OUT)
setup:
	@mkdir -p obj

$(OUT): $(OBJ_FILES)
	@$(AR) $@ $^

obj/%.o: src/%.cpp
	@$(CXX) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf obj $(OUT)
