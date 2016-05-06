PREFIX ?=/usr/local
BIN_DIR ?=${PREFIX}/bin
EXEC_FILES=git-russian-roulette

all:
	@echo "usage: make install   -> install 'git russian-roulette' command"
	@echo "       make uninstall -> uninstall the 'git russian-roulette' command"

install:
	install -d -m 0755 $(BIN_DIR)
	install -m 0755 $(EXEC_FILES) $(BIN_DIR)

uninstall:
	test -d $(BIN_DIR) && \
	cd $(BIN_DIR) && \
	rm -f $(EXEC_FILES)
