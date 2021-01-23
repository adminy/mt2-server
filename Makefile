export CC = gcc
export CXX = g++
export AR = ar cru
# export CC = x86_64-unknown-freebsd12-gcc
# export CXX = x86_64-unknown-freebsd12-g++
# export AR = x86_64-unknown-freebsd12-ar cru

default:
	$(MAKE) -C libthecore
	$(MAKE) -C libpoly
	$(MAKE) -C libgame
	$(MAKE) -C liblua
	$(MAKE) -C libsql
	$(MAKE) -C libserverkey
	$(MAKE) -C game
	$(MAKE) -C db
	@echo "--------------------------------------"
	@echo "Build Done"
	@echo "--------------------------------------"
clean:
	$(MAKE) -C libthecore clean
	$(MAKE) -C libpoly clean
	$(MAKE) -C libgame clean
	$(MAKE) -C liblua clean
	$(MAKE) -C libsql clean
	$(MAKE) -C libserverkey clean
	$(MAKE) -C game clean
	$(MAKE) -C db clean
	rm -rf 
