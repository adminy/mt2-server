PLATFORM = $(shell file /bin/ls | cut -d' ' -f3 | cut -d'-' -f1)
CC = g++
OUT = ./game_r40250_$(PLATFORM)
LIBS = -pthread -lm -lmd -lIL -lpng -ltiff -lmng -llcms -ljpeg -lmysqlclient -lz -L/usr/local/lib/mysql 
LIBS += -lthecore -lpoly -llua -lsql -lgame -lserverkey -lcryptopp
CFLAGS = -g -Wall -O2 -m32 -fpermissive -pipe -fexceptions -D_THREAD_SAFE -DNDEBUG # -D_USE_SERVER_KEY_
CFLAGS += -mtune=i686 -fstack-protector-all
INCDIR = -Iinclude -I/usr/local/include -I../../Extern/include/boost -I../libdevil
INCDIR += -I../libmysql/7.x-5.1.35 -I../cryptopp/include
INCDIR += -I../liblua/include -I../libserverkey/include
INCDIR +=  -L/usr/local/lib/mysql
LDIR = -L../libdevil -L../libmysql/7.x-5.1.35 -L../cryptopp -L/usr/local/lib
LDIR += -L../libthecore -L../libpoly -L../libsql -L../libgame -L../liblua -L../libserverkey
CPP_FILES := $(wildcard src/*.cpp)
OBJ_FILES := $(addprefix obj/,$(notdir $(CPP_FILES:.cpp=.o))) obj/minilzo.o

default: setup $(OUT)
setup:
	@mkdir -p obj

$(OUT): $(OBJ_FILES)
	@$(CC) $(CFLAGS) $(LDIR) $^ $(LIBS) -o $@

obj/minilzo.o: src/minilzo.c
	@$(CC) $(CFLAGS) $(INCDIR) -c $< -o $@

obj/%.o: src/%.cpp
	@$(CC) $(CFLAGS) $(INCDIR) -c $< -o $@

clean:
	@rm -rf obj $(OUT)
