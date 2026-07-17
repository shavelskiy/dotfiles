#!/usr/bin/make

DOTFILES := $(CURDIR)

.PHONY: bootstrap symlinks fisher start

bootstrap: symlinks fisher

symlinks:
	mkdir -p ~/.config
	ln -sfn $(DOTFILES)/fish ~/.config/fish
	ln -sfn $(DOTFILES)/tmux ~/.config/tmux
	ln -sfn $(DOTFILES)/nvim ~/.config/nvim
	ln -sf $(DOTFILES)/ghostty ~/.config/ghostty
	ln -sfn $(DOTFILES)/tmux/tmuxp ~/.config/tmuxp
	ln -sf $(DOTFILES)/.gitconfig ~/.gitconfig
	ln -sf $(DOTFILES)/.gitignore ~/.gitignore
	ln -sf $(DOTFILES)/.prettierrc ~/.prettierrc
	ln -sf $(DOTFILES)/cspell.json ~/.cspell.json

fisher:
	fish -c 'type -q fisher; or curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher; fisher update'

start:
	docker build --platform linux/amd64 -t nvim-test . && docker run --rm -ti nvim-test
