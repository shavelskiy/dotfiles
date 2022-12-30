require('mason').setup {
  ui = {
    icons = {
      package_pending = ' ',
      package_installed = ' ',
      package_uninstalled = ' ﮊ',
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

require('mason-lspconfig').setup {
  ensure_installed = require 'servers',
}

require('mason-null-ls').setup {
  ensure_installed = { 'tidy', 'prettier', 'djlint', 'twigcs', 'yamllint' },
}

require('utils.loader').highlight 'mason'
