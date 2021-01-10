CC=gcc
CXX=g++
default:
	$(MAKE) -C libthecore
	$(MAKE) -C libpoly
	$(MAKE) -C libgame
	$(MAKE) -C liblua
	$(MAKE) -C libsql
	$(MAKE) -C libserverkey
	$(MAKE) -C game limit_time
	$(MAKE) -C db
	@echo "--------------------------------------"
	@echo "Build Done"
	@echo "--------------------------------------"
	
