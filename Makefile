.PHONY: build install

build:
	zig build -Doptimize=ReleaseSafe

install: build
	install -Dm755 zig-out/bin/zsnow "$(HOME)/.local/bin/zsnow"
