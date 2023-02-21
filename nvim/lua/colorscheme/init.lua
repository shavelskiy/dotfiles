if vim.fn.exists 'syntax_on' then vim.cmd 'syntax reset' end

-- local theme = 'ayu-dark'
-- local theme = 'gruvbox'
local theme = 'nightfly'

require('colorscheme.scheme').set_theme(theme)
require 'colorscheme.modules.init'
