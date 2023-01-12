return {
  {
    'lewis6991/impatient.nvim',
    config = function() require 'impatient' end,
  },
  {
    'goolord/alpha-nvim',
    config = function() require 'plugins.config.alpha' end,
  },
  {
    'Shatur/neovim-session-manager',
    config = function() require 'plugins.config.session-manager' end,
  },
  { 'kyazdani42/nvim-web-devicons', config = true },
  {
    'kyazdani42/nvim-tree.lua',
    config = function() require 'plugins.config.nvimtree' end,
  },
  {
    'shavelskiy/tabline.nvim',
    config = function() require 'plugins.config.tabline' end,
  },
  {
    'shavelskiy/colorscheme.nvim',
    config = function() require 'plugins.config.colorscheme' end,
  },
  {
    'shavelskiy/statusline.nvim',
    config = function() require 'plugins.config.statusline' end,
  },
  { 'windwp/nvim-autopairs', config = true },
  {
    'lukas-reineke/indent-blankline.nvim',
  },
  {
    'uga-rosa/ccc.nvim',
    config = function() require 'plugins.config.ccc' end,
  },
  {
    'numToStr/Comment.nvim',
    config = function() require 'plugins.config.comment' end,
  },
  {
    'ggandor/leap.nvim',
    config = function() require('leap').add_default_mappings() end,
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-lua/popup.nvim',
      'nvim-telescope/telescope-dap.nvim',
    },
    config = function() require 'plugins.config.telescope' end,
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function() require 'plugins.config.gitsigns' end,
  },
  {
    'sindrets/diffview.nvim',
    config = function() require 'plugins.config.diffview' end,
  },
  {
    'iamcco/markdown-preview.nvim',
    build = 'cd app && npm install',
    init = function() vim.g.mkdp_filetypes = { 'markdown' } end,
    ft = { 'markdown' },
  },
  {
    'karb94/neoscroll.nvim',
    config = function() require 'plugins.config.neoscroll' end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    dependencies = {
      'nvim-treesitter/playground',
    },
    config = function() require 'plugins.config.treesitter' end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function() require 'plugins.config.lspconfig' end,
  },
  {
    'williamboman/mason.nvim',
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'jay-babu/mason-null-ls.nvim',
      'jay-babu/mason-nvim-dap.nvim',
    },
    config = function() require 'plugins.config.mason' end,
  },
  {
    'RRethy/vim-illuminate',
    config = function() require 'plugins.config.illuminate' end,
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function() require 'plugins.config.null-ls' end,
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
    },
    config = function()
      require 'plugins.config.cmp'
      require 'plugins.config.luasnip'
    end,
  },
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'theHamsta/nvim-dap-virtual-text',
      'rcarriga/nvim-dap-ui',
    },
    config = function() require 'plugins.config.debug.init' end,
  },
}
