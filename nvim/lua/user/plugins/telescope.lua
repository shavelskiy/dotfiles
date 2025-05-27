local execute = function(exec)
  if vim.bo[vim.api.nvim_win_get_buf(0)].ft ~= 'NvimTree' then
    exec()
  else
    local node = require('nvim-tree.core').get_explorer():get_node_at_cursor()
    if not node then return end
    exec { search_dirs = { node.open == nil and node.parent.absolute_path or node.absolute_path } }
  end
end

return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-dap.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
  },
  config = function()
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
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown {},
        },
      },
    }

    require('telescope').load_extension 'ui-select'
  end,
  keys = {
    { '<leader>ff', function() execute(require('telescope.builtin').find_files) end },
    { '<leader>fa', function() require('telescope.builtin').find_files { follow = true, no_ignore = true, hidden = true } end },
    { '<leader>fw', function() execute(require('telescope.builtin').live_grep) end },
    { '<leader>fe', function() require('telescope.builtin').grep_string() end },

    { '<leader>fb', function() require('telescope.builtin').buffers() end },
    { '<leader>tk', function() require('telescope.builtin').keymaps() end },

    { '<leader>cm', function() require('telescope.builtin').git_commits() end },
    { '<leader>gt', function() require('telescope.builtin').git_status() end },
    { '<leader>sa', function() require('telescope.builtin').highlights() end },

    { 'gd', function() require('telescope.builtin').lsp_definitions() end },
    { 'gr', function() require('telescope.builtin').lsp_references() end },
    { 'gi', function() require('telescope.builtin').lsp_implementations() end },

    { '<leader>dd', function() require('telescope').extensions.dap.list_breakpoints() end },
  },
}
