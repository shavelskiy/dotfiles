FROM alpine:3.20 AS base

RUN apk --no-cache add \
  alpine-sdk \
  bat \
  curl \
  eza \
  fish \
  git \
  neovim \
  nodejs \
  npm \
  ripgrep \
  tmux \
  tree-sitter-cli

COPY . /root/dotfiles

ENV SHELL=/usr/bin/fish

RUN mkdir -p ~/.config && \
  ln -sf ~/dotfiles/nvim ~/.config/nvim && \
  ln -sf ~/dotfiles/fish ~/.config/fish && \
  ln -sf ~/dotfiles/tmux ~/.config/tmux && \
  ln -sf ~/dotfiles/.prettierrc ~/.prettierrc && \
  ln -sf ~/dotfiles/.gitconfig ~/.gitconfig && \
  ln -sf ~/dotfiles/cspell.json ~/.cspell.json

RUN fish -c 'set -g fish_greeting ""; curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher && fisher update'

RUN nvim --headless "+Lazy! sync" +qa

WORKDIR /root

ENTRYPOINT ["fish"]
