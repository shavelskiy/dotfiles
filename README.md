# Tmux + fish + nvim setup

## Description

Nvim config primarily for PHP development

### Screens

<img src="https://raw.githubusercontent.com/shavelskiy/dotfiles/master/images/img1.png"/>
<img src="https://raw.githubusercontent.com/shavelskiy/dotfiles/master/images/img2.png"/>
<img src="https://raw.githubusercontent.com/shavelskiy/dotfiles/master/images/img3.png"/>
<img src="https://raw.githubusercontent.com/shavelskiy/dotfiles/master/images/img4.png"/>
<img src="https://raw.githubusercontent.com/shavelskiy/dotfiles/master/images/img5.png"/>
<img src="https://raw.githubusercontent.com/shavelskiy/dotfiles/master/images/img6.png"/>

### Nvim Plugins

- <a href="https://github.com/folke/lazy.nvim">folke/lazy.nvim</a> - Plugin manager
- <a href="https://github.com/lewis6991/impatient.nvim">lewis6991/impatient.nvim</a> - Speed up nvim

#### UI

- <a href="https://github.com/kyazdani42/nvim-web-devicons">kyazdani42/nvim-web-devicons</a> - File icons pack
- <a href="https://github.com/kyazdani42/nvim-tree.lua">kyazdani42/nvim-tree.lua</a> - File tree
- <a href="https://github.com/shavelskiy/tabline.nvim">shavelskiy/tabline.nvim</a> - Tabline
- <a href="https://github.com/shavelskiy/statusline.nvim">shavelskiy/statusline.nvim</a> - Statusline
- <a href="https://github.com/karb94/neoscroll.nvim">karb94/neoscroll.nvim</a> - Smooth scroll (glitch with open tree)

#### Other

- <a href="https://github.com/goolord/alpha-nvim">goolord/alpha-nvim</a> - Start screen
- <a href="https://github.com/rmagatti/auto-session">rmagatti/auto-session</a> - Session manager (error if open after close with empty buffer, todo replace)
- <a href="https://github.com/windwp/nvim-autopairs">windwp/nvim-autopairs</a> - Auto paris
- <a href="https://github.com/lukas-reineke/indent-blankline.nvim">lukas-reineke/indent-blankline.nvim</a> - indent lins
- <a href="https://github.com/uga-rosa/ccc.nvim">uga-rosa/ccc.nvim</a> - highlight colors and color picker
- <a href="https://github.com/numToStr/Comment.nvim">numToStr/Comment.nvim</a> - comment code
- <a href="https://github.com/ggandor/leap.nvim">ggandor/leap.nvim</a> - MUST HAVE!!!!! jump to any place in buffer
- <a href="https://github.com/iamcco/markdown-preview.nvim">iamcco/markdown-preview.nvim</a> - Beautiful Markdown preview in browser

#### Finder

- <a href="https://github.com/nvim-telescope/telescope.nvim">nvim-telescope/telescope.nvim</a> - File filder, word finder, lsp_reference list and more
- <a href="https://github.com/nvim-telescope/telescope-dap.nvim">nvim-telescope/telescope-dap.nvim</a> - Extension for dap (breakpoints list, actions)

#### Git

- <a href="https://github.com/lewis6991/gitsigns.nvim">lewis6991/gitsigns.nvim</a> - Git signs and git actioins on file
- <a href="https://github.com/sindrets/diffview.nvim">sindrets/diffview.nvim</a> - Interface for view git status/merge conflicts/history

#### LSP and highlighting

- <a href="https://github.com/nvim-treesitter/nvim-treesitter">nvim-treesitter/nvim-treesitter</a> - Highlight code
- <a href="https://github.com/neovim/nvim-lspconfig">neovim/nvim-lspconfig</a> - Lsp config provider
- <a href="https://github.com/williamboman/mason.nvim">williamboman/mason.nvim</a> - Lsp and other servers manager
- <a href="https://github.com/williamboman/mason-lspconfig.nvim">williamboman/mason-lspconfig.nvim</a> - Plugin for auto provide mason servers to lsp-config
- <a href="https://github.com/jay-babu/mason-null-ls.nvim">jay-babu/mason-null-ls.nvim</a> - Plugin for auto provide mason servers to null-ls
- <a href="https://github.com/RRethy/vim-illuminate">RRethy/vim-illuminate</a> - Highlight words by lsp (e.g. same variable)
- <a href="https://github.com/jose-elias-alvarez/null-ls.nvim">jose-elias-alvarez/null-ls.nvim</a> - Plugin for other formatters or linters

#### Completion menu

- <a href="https://github.com/hrsh7th/nvim-cmp">hrsh7th/nvim-cmp</a> - Completion menu
- <a href="https://github.com/hrsh7th/cmp-nvim-lsp">hrsh7th/cmp-nvim-lsp</a> - Lsp suggestions for menu
- <a href="https://github.com/hrsh7th/cmp-buffer">hrsh7th/cmp-buffer</a> - Current buffer words suggestions
- <a href="https://github.com/hrsh7th/cmp-path">hrsh7th/cmp-path</a> - Filesystem paths suggestions
- <a href="https://github.com/saadparwaiz1/cmp_luasnip">saadparwaiz1/cmp_luasnip</a> - Snippets suggestions
- <a href="https://github.com/L3MON4D3/LuaSnip">L3MON4D3/LuaSnip</a> - Snippets

#### DAP

- <a href="https://github.com/mfussenegger/nvim-dap">mfussenegger/nvim-dap</a> - Plugin for debug apater protocol
- <a href="https://github.com/theHamsta/nvim-dap-virtual-text">theHamsta/nvim-dap-virtual-text</a> - Virtual text values
- <a href="https://github.com/rcarriga/nvim-dap-ui">rcarriga/nvim-dap-ui</a> - UI for debug

#### Color scheme
Base16 based made from this impatientation <a href="https://github.com/NvChad/base46">base46</a>

### try with docker (fish + nvim)

```
docker run -w /root -it --rm alpine:edge sh -uelic '
             apk add git nodejs npm make neovim ripgrep tree-sitter-cli alpine-sdk fish exa tmux --update
             git clone https://github.com/shavelskiy/dotfiles.git ~/dotfiles
             mkdir ~/.config
             ln -s ~/dotfiles/nvim ~/.config/nvim
	     ln -s ~/dotfiles/fish ~/.config/fish
	     ln -s ~/dotfiles/tmux ~/.config/tmux
             fish
             '
```

##### After install run

1. ```tmux``` - run tmux
1. ```fish``` - run fish
1. ```curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher``` - install fisher for fish plugins
1. ```cd dotfiles && git reset --hard``` - after fisher install reset plugins
1. ```fisher update``` - and then configurate tide plugin
1. ```vim``` - start nvim and wait plugins and other install
1. restart vim for apply color scheme
