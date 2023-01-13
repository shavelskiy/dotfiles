local actions = require 'telescope.actions'

require('telescope').setup {
  defaults = {
    prompt_prefix = '  ',
    selection_caret = '  ',
    sorting_strategy = 'ascending',
    layout_config = {
      horizontal = {
        prompt_position = 'top',
        preview_width = 0.55,
        results_width = 0.8,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    path_display = { 'truncate' },
    border = {},
    set_env = { ['COLORTERM'] = 'truecolor' },
    mappings = {
      n = {
        ['q'] = actions.close,
      },
      i = {
        ['<C-e>'] = { '<esc>', type = 'command' },
        ['<esc>'] = actions.close,
      },
    },
  },

  extensions_list = { 'dap' },
}

require('utils').mapping 'telescope'
