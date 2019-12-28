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

.PHONY: check-style
=======
all: check-style

>>>>>>> 42ff3c928d7eec0ea85f32c7efebb574b89cc8dd
check-style:
	shellcheck src/*.sh
	@echo Check style completed!
