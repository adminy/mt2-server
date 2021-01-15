CC=gcc
CXX=g++
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
