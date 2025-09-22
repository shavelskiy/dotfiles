return {
  {
    'mason-org/mason.nvim',
    config = function()
      require('mason').setup {
        ui = {
          height = 0.8,
          icons = {
            package_pending = ' ',
            package_installed = ' ',
            package_uninstalled = ' ',
          },
          keymaps = {
            toggle_server_expand = '<CR>',
            install_server = 'i',
            update_server = 'u',
            check_server_version = 'c',
            update_all_servers = 'U',
            check_outdated_servers = 'C',
            uninstall_server = 'X',
            cancel_installation = '<C-c>',
          },
        },

        max_concurrent_installers = 10,
      }
    end,
  },
  {
    'mason-org/mason-lspconfig.nvim',
    dependencies = { 'neovim/nvim-lspconfig' },
    config = function()
      require('mason-lspconfig').setup {
        ensure_installed = require 'user.servers',
      }
    end,
  },
  {
    'jay-babu/mason-null-ls.nvim',
    config = function()
      require('mason-null-ls').setup {
        ensure_installed = { 'prettier', 'cspell', 'stylua', 'twigcs', 'sqlfluff' },
      }
    end,
  },
  {
    'jay-babu/mason-nvim-dap.nvim',
    config = function()
      require('mason-nvim-dap').setup {
        ensure_installed = { 'php', 'delve' },
      }
    end,
  },
}
