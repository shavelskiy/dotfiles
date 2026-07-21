# dotfiles

Personal development environment for macOS / Linux: **Fish** shell, **tmux**, and a from-scratch **Neovim** config (LSP, DAP, Treesitter, custom statusline/tabline/colorscheme).

## Quick start

```bash
git clone https://github.com/shavelskiy/dotfiles.git ~/dotfiles
cd ~/dotfiles
make bootstrap
```

`make bootstrap` symlinks every config into place and runs `fisher update` to install the Fish plugins listed in `fish/fish_plugins`.

## Dependencies

Core tools (macOS via Homebrew):

```bash
brew install fish tmux neovim eza bat git-delta ripgrep fd
```

| Tool | Used for |
|------|----------|
| [fish](https://fishshell.com) | shell |
| [tmux](https://github.com/tmux/tmux) | terminal multiplexer |
| [neovim](https://neovim.io) | editor (0.11+ recommended) |
| [eza](https://github.com/eza-community/eza) | `ll` / `lla` listing |
| [bat](https://github.com/sharkdp/bat) | `cat` replacement |
| [git-delta](https://github.com/dandavison/delta) | git pager / diffs |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | Telescope live-grep |

Optional:

- [bob](https://github.com/MordechaiHadad/bob) — Neovim version manager (the `vim` alias points at `~/.local/share/bob/nvim-bin/nvim`).
- [tmuxp](https://github.com/tmux-python/tmuxp) — declarative tmux sessions (`tp` alias).
- Language runtimes as needed (node, go, php, …) for the LSP servers.

## Layout

Everything is symlinked from the repo by `make bootstrap`:

| Repo path | Symlink target |
|-----------|----------------|
| `fish/` | `~/.config/fish` |
| `tmux/` | `~/.config/tmux` |
| `tmux/tmuxp/` | `~/.config/tmuxp` |
| `nvim/` | `~/.config/nvim` |
| `.gitconfig` | `~/.gitconfig` |
| `.gitignore` | `~/.gitignore` (global git excludes) |
| `.prettierrc` | `~/.prettierrc` |
| `cspell.json` | `~/.cspell.json` |

Copy `fish/secrets.fish.example` → `fish/secrets.fish` for local secrets (API keys, private paths). It is gitignored and sourced automatically by `config.fish`.

---

## Fish

`fish/config.fish` sets aliases, `$PATH`, `$EDITOR`, and `eza` colors.

**Aliases**

| Alias | Command |
|-------|---------|
| `ll` / `lla` | `eza` long listing (icons, git; `lla` includes hidden) |
| `cat` | `bat` |
| `vim` | bob-managed nvim |
| `clauded` | `claude --dangerously-skip-permissions` |
| `tp` | `tmuxp load` |
| `cspell` | local / Mason cspell binary |

**Functions**

- `work-clear` — delete every local git branch except `main` / `master`.

**Plugins** (`fish/fish_plugins`, managed by [fisher](https://github.com/jorgebucaran/fisher)): `tide` prompt, `nvm.fish`.

---

## tmux

Prefix is remapped to **`C-a`** (`tmux/tmux.conf`). Config reloads with `prefix + r`.

| Binding | Action |
|---------|--------|
| `prefix + -` | split horizontal (below) |
| `prefix + _` | split vertical (right) |
| `prefix + p` | floating **popup** (80×80%, cwd) |
| `prefix + h/j/k/l` | move between panes |
| `prefix + H/J/K/L` | resize pane |
| `prefix + C-h` / `C-l` | previous / next window |
| `prefix + Tab` | last window |
| `prefix + C-c` | new session |
| `prefix + C-f` | find & switch session |

Vi copy-mode: `v` begin selection, `y` copy, `r` rectangle toggle. Theming lives in `tmux/tmux-power.conf`.

**tmuxp sessions** (`tmux/tmuxp/`, load with `tp <name>`):

- `dotfiles` — this repo in nvim.
- `tride` — control / backend / frontend windows for the `tride` project.
- `afk` — misc layout.

---

## Neovim

A modular, plugin-manager-driven config under `nvim/`. Leader is **`Space`**.

```
nvim/
├── init.lua                  # entrypoint: user → colorscheme → statusline → tabline
├── lua/user/                 # core options, keymaps, plugins, LSP, DAP
│   ├── core/                 # options.lua, keymaps.lua, ru_keys.lua
│   ├── plugins/              # one file per plugin (lazy.nvim spec)
│   ├── servers/              # per-LSP-server settings
│   ├── lsp/on_attach.lua     # buffer-local LSP keymaps
│   └── dap/                  # debug adapters (go, php)
├── lua/colorscheme/          # custom base16 theme + per-plugin highlight modules
├── lua/statusline/           # handwritten statusline
├── lua/tabline/              # handwritten tab/buffer line
├── snippets/                 # project snippets (php, …)
└── after/ftplugin/           # per-filetype overrides (go, php)
```

Plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim) (auto-bootstrapped on first launch); every file in `lua/user/plugins/` is one spec.

### Key plugins

| Area | Plugin |
|------|--------|
| Completion | [blink.cmp](https://github.com/saghen/blink.cmp) + LuaSnip |
| LSP | nvim-lspconfig + [mason.nvim](https://github.com/williamboman/mason.nvim) |
| Formatting | [conform.nvim](https://github.com/stevearc/conform.nvim) |
| Fuzzy find | [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) |
| File tree | [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) |
| Syntax | nvim-treesitter (+ textobjects, autotag) |
| Debug | nvim-dap + dap-ui (go, php) |
| Git | gitsigns, diffview |
| Motions | [leap.nvim](https://github.com/ggandor/leap.nvim) (`s` / `S`) |
| Misc | autopairs, indent-blankline, persistence (sessions); built-in commenting (`gc`) and LSP document highlight |

### Editing keymaps (`lua/user/core/keymaps.lua`)

| Key | Action |
|-----|--------|
| `<CR>` / `<S-CR>` | insert blank line below / above (normal mode) |
| `<Esc>` | clear search highlight |
| `<C-h/j/k/l>` | move between splits |
| `<Up/Down/Left/Right>` | resize current split |
| `<C-j>` / `<C-k>` (insert/visual) | move line/selection down / up |
| `<leader>s` | rename word under cursor (buffer-wide) |
| `<leader>d` | delete into black-hole register |
| `te` / `tq` | tab edit / tab close |
| `]d` / `[d` | next / previous diagnostic |

### LSP keymaps (buffer-local, on attach)

| Key | Action |
|-----|--------|
| `K` | hover docs |
| `<leader>rn` | rename symbol |
| `<leader>ca` | code action |
| `<leader>cd` | diagnostics float |

Formatting is done by conform (LSP fallback); `intelephense` keeps document formatting, other servers defer to conform.

### Telescope

`<leader>ff` files · `<leader>fa` all files (hidden/ignored) · `<leader>fw` live grep · `<leader>fe` grep word · `<leader>fb` buffers · `<leader>tk` keymaps · `<leader>cm` git commits · `<leader>gt` git status.

### File tree / git / debug

- `<C-n>` toggle tree · `<leader>e` focus tree.
- `<leader>/` toggle comment (built-in `gc`) · `]h` / `[h` next / prev hunk · `<leader>hp` preview hunk · `<leader>hs` stage hunk · `<leader>hr` reset hunk · `<leader>hb` blame line · `<leader>hR` reset buffer · `<leader>tb` toggle line blame.
- `<F6/F7/F8>` step over/into/out · `<leader>dt` breakpoint · `<leader>dc` continue · `<leader>di` toggle dap-ui. Variable values are shown inline via nvim-dap-virtual-text.

### Configured LSP servers

`cssls`, `cspell_ls`, `dockerls`, `gopls`, `intelephense`, `lua_ls`, `svelte`, `tailwindcss`, `vtsls` — installed via Mason, configured under `lua/user/servers/`.

### Formatters (conform)

`stylua` (lua), `gofmt` (go), `sqlfluff` (sql), `djlint` (twig), `prettier` (js/ts/vue/svelte/html/css/scss/json/yaml/markdown).

### cspell dictionaries

After Mason installs cspell:

```bash
cd ~/.local/share/nvim/mason/packages/cspell/
npm install @cspell/dict-ru_ru @cspell/dict-php @cspell/dict-html @cspell/dict-typescript
cspell link add ru-ru php html typescript
```

---

## Docker test environment

```bash
make start
```

Builds an Alpine container from the local repo (not a remote clone) with fish, tmux, and the full nvim config synced + Lazy-synced — a throwaway sandbox to test config changes.
