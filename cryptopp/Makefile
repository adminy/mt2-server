CXX=g++
CXXFLAGS=-O2 -pipe -fno-strict-aliasing -DNDEBUG -fPIC -Iinclude -Isrc
CPP_FILES := $(wildcard src/*.cpp)
OBJ_FILES := $(addprefix obj/,$(notdir $(CPP_FILES:.cpp=.o)))
OUT = libcryptopp.a
default: setup $(OUT)
setup:
	@mkdir -p obj

$(OUT): $(OBJ_FILES)
	@$(AR) -cr $@ $^

obj/%.o: src/%.cpp
	@$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	@rm -rf obj $(OUT)
