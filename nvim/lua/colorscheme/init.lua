if vim.fn.exists 'syntax_on' then vim.cmd 'syntax reset' end

-- local theme = 'ayu-dark'
-- local theme = 'ayu-mirage'
-- local theme = 'catppuccin'
-- local theme = 'default'
-- local theme = 'gruvbox'
-- local theme = 'tokyodark'
local theme = 'nightfly'

require('colorscheme.scheme').set_theme(theme)
require 'colorscheme.modules.init'
