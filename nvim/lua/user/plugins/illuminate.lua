return {
  'RRethy/vim-illuminate',
  config = function()
    require('illuminate').configure {
      providers = {
        'lsp',
        'treesitter',
        'regex',
      },
      filetype_overrides = {},
      filetypes_denylist = {
        'NvimTree',
        'alpha',
        'git.nvim',
        'TelescopePrompt',
        'lazy',
        'DiffviewFiles',
        'DiffviewFileHistory',
        'dapui_scopes',
        'dapui_breakpoints',
        'dapui_stacks',
        'dap-float',
      },
      filetypes_allowlist = {},
      modes_denylist = {},
      modes_allowlist = {},
      providers_regex_syntax_denylist = {},
      providers_regex_syntax_allowlist = {},
      under_cursor = true,
      large_file_cutoff = nil,
      large_file_overrides = nil,
    }
  end,
}
