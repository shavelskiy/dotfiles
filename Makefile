#!/usr/bin/make

start:
	docker build --platform linux/amd64 --no-cache -t nvim-test . && docker run --rm -ti nvim-test fish
