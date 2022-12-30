local luasnip = require 'luasnip'

luasnip.config.set_config {
  history = true,
  updateevents = 'TextChanged,TextChangedI',
}

require('luasnip.loaders.from_vscode').lazy_load()
require('luasnip.loaders.from_vscode').lazy_load { paths = { './snippets' } }
require('luasnip.loaders.from_snipmate').lazy_load()

luasnip.filetype_extend('all', { '_' })

vim.api.nvim_create_autocmd('InsertLeave', {
  callback = function()
    if luasnip.session.current_nodes[vim.api.nvim_get_current_buf()] and not luasnip.session.jump_active then
      luasnip.unlink_current()
    end
  end,
})
