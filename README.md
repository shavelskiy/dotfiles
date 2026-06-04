# dotfiles

Fish + tmux + nvim setup for macOS/Linux.

## Quick start

```bash
git clone https://github.com/shavelskiy/dotfiles.git ~/dotfiles
cd ~/dotfiles
make bootstrap
```

`bootstrap` creates symlinks and runs `fisher update` to install fish plugins from `fish/fish_plugins`.

## Manual dependencies (macOS)

```bash
brew install fish tmux eza bat git-delta ripgrep
```

Optional: [bob](https://github.com/MordechaiHadad/bob) for nvim version management, Mason for LSP/tooling inside nvim.

## Layout

| Path | Symlink target |
|------|----------------|
| `fish/` | `~/.config/fish` |
| `tmux/` | `~/.config/tmux` |
| `nvim/` | `~/.config/nvim` |
| `.gitconfig` | `~/.gitconfig` |
| `.prettierrc` | `~/.prettierrc` |
| `cspell.json` | `~/.cspell.json` |

Copy `fish/secrets.fish.example` to `fish/secrets.fish` for local secrets (gitignored).

## cspell dictionaries (via Mason)

After nvim/Mason installs cspell:

```bash
cd ~/.local/share/nvim/mason/packages/cspell/
npm install @cspell/dict-ru_ru @cspell/dict-php @cspell/dict-html @cspell/dict-typescript
cspell link add ru-ru php html typescript
```

## Docker test environment

```bash
make start
```

Builds a container from the local repo (not a remote clone) with fish, tmux, and nvim config.
