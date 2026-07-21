local opt = vim.opt

opt.scrolloff = 15

opt.completeopt = 'menu,menuone,noselect'

opt.showmode = false
opt.clipboard = 'unnamedplus'
opt.cul = true
opt.mouse = ''

opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 8
opt.softtabstop = 2

opt.fillchars = { eob = ' ', diff = '╱' }
opt.ignorecase = true
opt.smartcase = true

opt.number = true
opt.numberwidth = 2
opt.ruler = false

opt.shortmess:append 'sI'

opt.signcolumn = 'yes'
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

opt.updatetime = 250

opt.foldlevelstart = 99

opt.spell = false
