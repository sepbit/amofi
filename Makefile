all: check-style

check-style:
	shellcheck src/*.sh
	@echo Check style completed!
