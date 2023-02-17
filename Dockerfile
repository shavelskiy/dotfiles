FROM alpine:3.17 AS base

RUN apk --no-cache add \
  autoconf \
  automake \
  build-base \
  cmake \
  ninja \
  coreutils \
  curl \
  gettext-tiny-dev \
  git \
  libtool \
  pkgconf \
  unzip \
  git \
  nodejs \
  npm \
  neovim \
  ripgrep \
  tree-sitter-cli \
  fish \
  exa \
  tmux

RUN git clone https://github.com/shavelskiy/dotfiles.git ~/dotfiles

RUN mkdir ~/.config
RUN ln -s ~/dotfiles/nvim ~/.config/nvim
RUN ln -s ~/dotfiles/fish ~/.config/fish
RUN ln -s ~/dotfiles/tmux ~/.config/tmux
RUN ln -s ~/dotfiles/.prettierrc.json ~/.prettierrc.json

# RUN curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
# RUN cd dotfiles && git reset --hard
# RUN fisher update

RUN nvim --headless "+Lazy! sync" +qa

# cd ~/.local/share/nvim/mason/packages/prettier
# npm install --save-dev @prettier/plugin-xml prettier-plugin-twig-melody

WORKDIR /root
