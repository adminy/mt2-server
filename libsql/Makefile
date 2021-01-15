CXX	= g++
OUT = ./libsql.a

IFLAGS = -Iinclude -I../libmysql/7.x-5.1.35 #-I../libmysql/5.x-5.1.35
CFLAGS = $(IFLAGS) -Wall -O2 -pipe -mtune=i686 -D_THREAD_SAFE -fno-exceptions

CPP_FILES := $(wildcard src/*.cpp)
OBJ_FILES := $(addprefix obj/,$(notdir $(CPP_FILES:.cpp=.o)))

default: setup $(OUT)
setup:
	@mkdir -p obj

$(OUT): $(OBJ_FILES)
	@$(AR) cru $@ $^
	# @ranlib $@ # @chmod 700 $@

obj/%.o: src/%.cpp
	@$(CXX) $(CFLAGS) -c $< -o $@

clean:
	@rm -rf obj $(OUT)
