local opt = vim.opt

opt.scrolloff = 15

opt.completeopt = 'menu,menuone,noselect'

opt.showmode = false
opt.clipboard = 'unnamedplus'
opt.cul = true -- cursor line
opt.mouse = ''

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 8
opt.softtabstop = 2

opt.fillchars = { eob = ' ', diff = '╱' }
opt.ignorecase = true
opt.smartcase = true

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append 'sI'

opt.signcolumn = 'yes'
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

opt.updatetime = 250

opt.spell = false
opt.spelllang = 'en_us,ru'
