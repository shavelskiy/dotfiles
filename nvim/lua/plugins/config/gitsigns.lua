require('gitsigns').setup {
  signs = {
    add = { hl = 'GitSignsDiffAdd', text = '│' },
    change = { hl = 'GitSignsDiffChange', text = '│' },
    delete = { hl = 'GitSignsDiffDelete', text = '│' },
    topdelete = { hl = 'GitSignsDiffDelete', text = '‾' },
    changedelete = { hl = 'GitSignsDiffChangeDelete', text = '~' },
    untracked = { hl = 'GitSignsDiffAdd', text = '│' },
  },
  on_attach = function(bufnr)
    for _, map in pairs(require 'mapping.gitsigns') do
      vim.keymap.set('n', map[1], map[2], { buffer = bufnr })
    end
  end,
}
