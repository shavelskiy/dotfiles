FROM alpine:3.17 AS base

RUN apk --no-cache add \
  alpine-sdk \
  nodejs \
  npm \
  neovim \
  ripgrep \
  tree-sitter-cli \
  fish \
  exa \
  tmux

RUN git clone https://github.com/shavelskiy/dotfiles.git ~/dotfiles

ENV SHELL /usr/bin/fish

RUN mkdir ~/.config
RUN ln -s ~/dotfiles/nvim ~/.config/nvim
RUN ln -s ~/dotfiles/fish ~/.config/fish
RUN ln -s ~/dotfiles/tmux ~/.config/tmux
RUN ln -s ~/dotfiles/.prettierrc.json ~/.prettierrc.json
RUN ln -s ~/dotfiles/.gitignore ~/.gitignore

RUN nvim --headless "+Lazy! sync" +qa

# RUN curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
# RUN cd dotfiles && git reset --hard
# RUN fisher update

# cd ~/.local/share/nvim/mason/packages/prettier
# npm install --save-dev @prettier/plugin-xml prettier-plugin-twig-melody

WORKDIR /root

ENTRYPOINT ["fish"]
