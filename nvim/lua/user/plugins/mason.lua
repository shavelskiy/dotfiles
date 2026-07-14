return {
  {
    'mason-org/mason.nvim',
    cmd = { 'Mason', 'MasonInstall', 'MasonUpdate', 'MasonUninstall', 'MasonLog' },
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
    event = 'VeryLazy',
    dependencies = { 'mason-org/mason.nvim' },
    config = function()
      require('mason-lspconfig').setup {
        ensure_installed = require 'user.servers',
        automatic_enable = false,
      }
    end,
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    event = 'VeryLazy',
    dependencies = { 'mason-org/mason.nvim' },
    config = function()
      require('mason-tool-installer').setup {
        ensure_installed = { 'prettier', 'stylua', 'sqlfluff', 'djlint' },
      }
    end,
  },
  {
    'jay-babu/mason-nvim-dap.nvim',
    event = 'VeryLazy',
    dependencies = { 'mason-org/mason.nvim' },
    config = function()
      require('mason-nvim-dap').setup {
        ensure_installed = { 'php', 'delve' },
      }
    end,
  },
}
