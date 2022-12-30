local neoscroll = require 'neoscroll'

neoscroll.setup {
  mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>', 'zt', 'zz', 'zb' },
  easing_function = 'quadratic',
  hide_cursor = true,
  stop_eof = true,
  respect_scrolloff = false,
  cursor_scrolls_alone = true,
}

local time = 100
require('neoscroll.config').set_mappings {
  ['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', time, [['sine']] } },
  ['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', time, [['sine']] } },
  ['<C-b>'] = { 'scroll', { '-vim.api.nvim_win_get_height(0)', 'true', time, [['circular']] } },
  ['<C-f>'] = { 'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', time, [['circular']] } },
  ['zt'] = { 'zt', { time } },
  ['zz'] = { 'zz', { time } },
  ['zb'] = { 'zb', { time } },
}
