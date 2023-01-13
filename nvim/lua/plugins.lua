return {
  {
    'lewis6991/impatient.nvim',
    config = function() require 'impatient' end,
  },
  {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end,
  },
  {
    'windwp/nvim-ts-autotag',
    config = function() require 'plugins.ts-autotag' end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function() require('indent_blankline').setup {} end,
  },
  {
    'ggandor/leap.nvim',
    config = function() require('leap').add_default_mappings() end,
  },
  {
    'uga-rosa/ccc.nvim',
    config = function() require 'plugins.ccc' end,
  },
  {
    'numToStr/Comment.nvim',
    config = function() require 'plugins.comment' end,
  },
  {
    'karb94/neoscroll.nvim',
    config = function() require 'plugins.neoscroll' end,
  },
  {
    'goolord/alpha-nvim',
    config = function() require 'plugins.alpha' end,
  },
  {
    'Shatur/neovim-session-manager',
    config = function() require 'plugins.session-manager' end,
  },
  {
    'kyazdani42/nvim-web-devicons',
    config = function() require('nvim-web-devicons').setup {} end,
  },
  {
    'kyazdani42/nvim-tree.lua',
    config = function() require 'plugins.nvimtree' end,
  },
  {
    'shavelskiy/tabline.nvim',
    config = function() require 'plugins.tabline' end,
  },
  {
    'shavelskiy/statusline.nvim',
    config = function() require 'plugins.statusline' end,
  },
  {
    'stevearc/dressing.nvim',
    config = function() require 'plugins.dressing' end,
  },
  {
    'shavelskiy/colorscheme.nvim',
    config = function() require 'plugins.colorscheme' end,
  },
  { 'iamcco/markdown-preview.nvim', build = 'cd app && npm install' },
  {
    'lewis6991/gitsigns.nvim',
    config = function() require 'plugins.gitsigns' end,
  },
  {
    'sindrets/diffview.nvim',
    config = function() require 'plugins.diffview' end,
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-lua/popup.nvim',
      'nvim-telescope/telescope-dap.nvim',
    },
    config = function() require 'plugins.telescope' end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/playground',
    },
    build = ':TSUpdate',
    config = function() require 'plugins.treesitter' end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function() require 'plugins.lspconfig' end,
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function() require 'plugins.null-ls' end,
  },
  {
    'RRethy/vim-illuminate',
    config = function() require 'plugins.illuminate' end,
  },
  {
    'williamboman/mason.nvim',
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'jay-babu/mason-null-ls.nvim',
      'jay-babu/mason-nvim-dap.nvim',
    },
    config = function() require 'plugins.mason' end,
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
      require 'plugins.cmp'
      require 'plugins.luasnip'
    end,
  },
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'theHamsta/nvim-dap-virtual-text',
      'rcarriga/nvim-dap-ui',
    },
    config = function() require 'plugins.debug.init' end,
  },
}
