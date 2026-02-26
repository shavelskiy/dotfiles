local execute = function(exec)
  if vim.bo[vim.api.nvim_win_get_buf(0)].ft ~= 'NvimTree' then
    exec()
  else
    local node = require('nvim-tree.core').get_explorer():get_node_at_cursor()
    if not node then return end
    exec { search_dirs = { node.open == nil and node.parent.absolute_path or node.absolute_path } }
  end
end

local function multi_file_select(prompt_bufnr)
  local actions = require 'telescope.actions'
  local action_state = require 'telescope.actions.state'

  local picker = action_state.get_current_picker(prompt_bufnr)
  local selections = picker:get_multi_selection()
  local num_selections = #selections

  if num_selections > 1 then
    local cwd = picker.cwd or vim.loop.cwd()
    actions.close(prompt_bufnr)

    local first_file = true
    for _, entry in ipairs(selections) do
      local file_path

      if entry.Path then -- для некоторых источников
        file_path = entry.Path
      elseif entry.filename then
        file_path = entry.filename
      elseif entry.value then
        local value = entry.value
        local colon_pos = value:find ':'
        if colon_pos then
          file_path = value:sub(1, colon_pos - 1)
        else
          file_path = value
        end
      elseif type(entry) == 'string' then
        file_path = entry
      elseif entry[1] then
        file_path = entry[1]
      end

      if file_path then
        local full_path
        if file_path:sub(1, 1) == '/' or file_path:match '^%a:[/\\]' then
          full_path = file_path
        else
          full_path = cwd .. '/' .. file_path
        end

        if first_file then
          vim.cmd('edit ' .. vim.fn.fnameescape(full_path))
          first_file = false
        else
          vim.cmd('badd ' .. vim.fn.fnameescape(full_path))
        end
      end
    end

    print('Открыто ' .. num_selections .. ' файлов')
  else
    actions.file_edit(prompt_bufnr)
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
        file_ignore_patterns = {
          '.git',
          'docs',
          'scripts',
        },
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
        mappings = {
          n = {
            ['q'] = actions.close,
          },
          i = {
            ['<C-e>'] = { '<esc>', type = 'command' },
            ['<esc>'] = actions.close,
            ['<CR>'] = multi_file_select,
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
        live_grep = {
          additional_args = function() return { '--hidden' } end,
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
