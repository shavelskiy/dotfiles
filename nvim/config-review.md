# Ревью конфига Neovim

Дата: 2026-07-06

Общее впечатление: конфиг заметно выше среднего — модульный, современный, без тяжёлых плагинов-комбайнов. Но есть несколько устаревших API и пара колхозных мест.

## Что нравится

- **Новый LSP API** — `vim.lsp.config()` / `vim.lsp.enable()` вместо старого фреймворка lspconfig (`lua/user/servers/config.lua:14-21`). Плюс сервер = отдельный файл — чисто.
- **nvim-treesitter на ветке `main`** с новым `install()` API — большинство конфигов в интернете до сих пор на устаревшем `master`.
- **Свои statusline/tabline/colorscheme** вместо lualine/bufferline/base16-плагина. Меньше зависимостей, полный контроль. Разбивка colorscheme на модули по плагинам — аккуратно.
- **Ленивая загрузка** через `keys =` / `event =` у telescope, conform, cmp, nvim-tree.
- Мелкие приятности: `i` → `cc` на пустой строке (автоотступ), `ru_keys.lua` через langmap, `J` с сохранением позиции курсора, единый цикл для кеймапов.

## Что устарело

1. **`vim.loop`** в `lua/user/init.lua:6` — deprecated, теперь `vim.uv`. Причём в `telescope.lua:20` уже используется `vim.uv` — непоследовательно.
2. **`vim.diagnostic.goto_next/goto_prev`** в `keymaps.lua:35-36` — deprecated с 0.11, будет удалено. Замена: `vim.diagnostic.jump({ count = 1, float = true })` / `{ count = -1, float = true }`.
3. **`vim.loader.enable()`** вызывается в `user/init.lua:3` *после* `require 'user.core'` — кеширование не работает для core-модулей. Должно быть первой строкой `init.lua`.
4. **auto-session**: вложенный формат `cwd_change_handling = { restore_upcoming_session = ..., pre_cwd_changed_hook = ... }` — старый API. В свежих версиях это boolean + отдельные `pre_cwd_changed_cmds` / `post_cwd_changed_cmds`. Проверить, работает ли смена cwd вообще.

## Что колхозно

1. **`multi_file_select` в `telescope.lua:11-64`** — самое сомнительное место. Цепочка угадываний `entry.Path → entry.filename → entry.value → entry[1]`, ручной парсинг `:`, проверка виндовых путей `%a:[/\\]` на macOS, ручная склейка cwd. У telescope entry есть хелперы в `telescope.actions.state` и `entry.path` — можно ужать раза в три и сделать надёжнее.
2. **`file_ignore_patterns = { '.git', 'docs', 'scripts' }`** (`telescope.lua:78`) — это Lua-паттерны, не строки. `.git` означает «любой символ + git» и матчится в любом месте пути: файл `digital.ts` или папка `widgits/` будут скрыты. `docs`/`scripts` тоже прячут любые вложенные пути. Правильнее: `'^%.git/'`, `'^docs/'`, `'^scripts/'`.
3. **`<Tab>` в normal mode** для переключения буферов (`tabline/init.lua:53`) — в терминале `<Tab>` = `<C-i>`, значит прыжок вперёд по jumplist убит. Если `<C-o>` работает, а `<C-i>` нет — вот причина.
4. **Мёртвые иконки в `cmp.lua`** — Supermaven, Copilot, Codeium, TabNine, BladeNav, Calendar, Watch: таких источников в конфиге нет, тащится из чужого конфига.
5. Мелочь: в `cmp.lua:128` `vim.fn.feedkeys(nvim_replace_termcodes(...))` — можно просто `luasnip.expand_or_jump()`.

## Спорное (не трогать без нужды)

- `ensure_installed = require 'user.servers'` в mason-lspconfig включает `cspell_ls` — если это не пакет из реестра mason, он либо молча игнорируется, либо ругается при `:MasonToolsInstall`.
- В `treesitter.lua:43-45` включены treesitter-folds, хотя в AGENTS.md записано «не включать treesitter-folds» — либо запись устарела, либо это забытый кусок.
