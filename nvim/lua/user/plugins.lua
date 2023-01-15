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
    config = function() require 'user.plugins.ts-autotag' end,
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
    config = function() require 'user.plugins.ccc' end,
  },
  {
    'numToStr/Comment.nvim',
    config = function() require 'user.plugins.comment' end,
  },
  {
    'karb94/neoscroll.nvim',
    config = function() require 'user.plugins.neoscroll' end,
  },
  {
    'goolord/alpha-nvim',
    config = function() require 'user.plugins.alpha' end,
  },
  {
    'Shatur/neovim-session-manager',
    config = function() require 'user.plugins.session-manager' end,
  },
  {
    'kyazdani42/nvim-web-devicons',
    config = function() require('nvim-web-devicons').setup {} end,
  },
  {
    'kyazdani42/nvim-tree.lua',
    config = function() require 'user.plugins.nvimtree' end,
  },
  {
    'shavelskiy/tabline.nvim',
    config = function() require 'user.plugins.tabline' end,
  },
  {
    'shavelskiy/statusline.nvim',
    config = function() require 'user.plugins.statusline' end,
  },
  {
    'stevearc/dressing.nvim',
    config = function() require 'user.plugins.dressing' end,
  },
  {
    'shavelskiy/colorscheme.nvim',
    config = function() require 'user.plugins.colorscheme' end,
  },
  { 'iamcco/markdown-preview.nvim', build = 'cd app && npm install' },
  {
    'lewis6991/gitsigns.nvim',
    config = function() require 'user.plugins.gitsigns' end,
  },
  {
    'sindrets/diffview.nvim',
    config = function() require 'user.plugins.diffview' end,
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-lua/popup.nvim',
      'nvim-telescope/telescope-dap.nvim',
    },
    config = function() require 'user.plugins.telescope' end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/playground',
    },
    build = ':TSUpdate',
    config = function() require 'user.plugins.treesitter' end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function() require 'user.plugins.lspconfig' end,
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function() require 'user.plugins.null-ls' end,
  },
  {
    'RRethy/vim-illuminate',
    config = function() require 'user.plugins.illuminate' end,
  },
  {
    'williamboman/mason.nvim',
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'jay-babu/mason-null-ls.nvim',
      'jay-babu/mason-nvim-dap.nvim',
    },
    config = function() require 'user.plugins.mason' end,
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
      require 'user.plugins.cmp'
      require 'user.plugins.luasnip'
    end,
  },
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      'theHamsta/nvim-dap-virtual-text',
      'rcarriga/nvim-dap-ui',
    },
    config = function() require 'user.plugins.debug.init' end,
  },
}
