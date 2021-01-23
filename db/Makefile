OUT = ./db_r40146

IFLAGS = -Iinclude -I../boost -I../libmysql/7.x-5.1.35
CFLAGS = -g -Wall -O2 -pipe -fno-rtti -fno-exceptions -pthread -D_THREAD_SAFE -mtune=i686
LIBS = -lthecore -lmysqlclient -lsql -lpoly -lgame -lm -lz
LDIR = -L/usr/local/lib/mysql -L../libthecore -L../libsql -L../libpoly -L../libgame -L../libmysql/7.x-5.1.35

CPP_FILES := $(wildcard src/*.cpp)
OBJ_FILES := $(addprefix obj/,$(notdir $(CPP_FILES:.cpp=.o)))

default: setup $(OUT)
setup:
	@mkdir -p obj

$(OUT): $(OBJ_FILES)
	@$(CXX) $(CFLAGS) $(LDIR) $^ $(LIBS) -o $@

obj/%.o: src/%.cpp
	@$(CXX) $(CFLAGS) $(IFLAGS) -c $< -o $@

clean:
	@rm -rf obj
