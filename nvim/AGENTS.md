## Learned User Preferences

- Общаться на русском.
- Не предлагать which-key и не добавлять `desc` к keymaps ради подсказок — сочетания запомнены.
- Не предлагать миграции Telescope→fzf, nvim-cmp→blink.cmp, Leap→flash/sneak без явного запроса — текущий стек устраивает.
- Не расширять LSP on_attach (workspace/document symbols, signature help) — не использует.
- Не включать relativenumber и treesitter-folds.
- После restore сессии nvim-tree должен открываться (auto-session) — это желаемое поведение.
- avante.nvim — тестовый плагин; не менять без явного запроса.
- Оставлять оба markdown-плагина: markdown-preview (браузер) и render-markdown (вспомогательный для avante).
- Форматирование вручную по `<space>f`; format_on_save не включать без запроса.
- Гибкость DAP/telescope ignore/ftplugin для vue/svelte не нужна — проектов мало, правки вручную при необходимости.

## Learned Workspace Facts

- Neovim dotfiles на lazy.nvim: leader `<Space>`, `ru_keys.lua` (langmap), кастомные colorscheme/statusline/tabline.
- Стек разработки: PHP (intelephense), Go (gopls), TS/JS (vtsls); conform.nvim для CLI-форматирования, PHP — через intelephense (`lsp_format = 'fallback'`).
- Spell-check: `cspell_ls` с `filetypes = nil` (все буферы); severity Error через handler в `lua/user/servers/cspell_ls.lua`.
- Mason tools: `WhoIsSethDaniel/mason-tool-installer.nvim` (не `WhoIsSahil`); ensure prettier, stylua, sqlfluff, djlint.
- indent-blankline: группы `IblIndent`/`IblWhitespace` в теме, в плагине — не `CursorColumn` (иначе фон `base02`).
- nvim-treesitter на ветке `main` (новый API `install()`); после `:Lazy update` проверять подсветку на php/go/ts.
