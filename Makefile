<<<<<<< HEAD
all: install

.PHONY: install
install:
	mkdir -p /opt/sepbit/amofi
	cp -r * /opt/sepbit/amofi
	chmod +x /opt/sepbit/amofi/src/amofi.sh
	ln -s /opt/sepbit/amofi/src/amofi.sh /usr/bin/amofi
	@echo Install completed!

.PHONY: uninstall
uninstall:
	rm -rf /opt/sepbit/amofi
	rm -f /usr/bin/amofi
	@echo Uninstall completed!

