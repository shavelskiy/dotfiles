#!/usr/bin/make

start:
	docker build --platform linux/amd64 -t nvim-test . && docker run -ti nvim-test fish
