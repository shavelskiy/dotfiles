# Tmux + fish + nvim setup

### try with docker (fish + nvim)

```
docker run -w /root -it --rm alpine:edge sh -uelic '
             apk add git nodejs npm make neovim ripgrep tree-sitter-cli alpine-sdk fish exa tmux --update
             git clone https://github.com/shavelskiy/dotfiles.git ~/dotfiles
             mkdir ~/.config
             ln -s ~/dotfiles/nvim ~/.config/nvim
	     ln -s ~/dotfiles/fish ~/.config/fish
	     ln -s ~/dotfiles/tmux ~/.config/tmux
	     ln -s ~/dotfiles/.prettierrc.json ~/.prettierrc.json
             fish
             '
```

After install mason packages install prettier plugins

```
cd ~/.local/share/nvim/mason/packages/prettier
npm install --save-dev @prettier/plugin-xml prettier-plugin-twig-melody
```

##### After install run

1. `tmux` - run tmux
1. `fish` - run fish
1. `curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher` - install fisher for fish plugins
1. `cd dotfiles && git reset --hard` - after fisher install reset plugins
1. `fisher update` - and then configurate tide plugin
1. `vim` - start nvim and wait plugins and other install
1. restart vim for apply color scheme
