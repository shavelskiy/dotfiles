local builtin = require 'telescope.builtin'
local dap = require('telescope').extensions.dap
local execute = require 'utils.finder'

return {
  {
    '<leader>ff',
    function() execute(builtin.find_files) end,
  },
  {
    '<leader>fa',
    function() builtin.find_files { follow = true, no_ignore = true, hidden = true } end,
  },
  {
    '<leader>fw',
    function() execute(builtin.live_grep) end,
  },
  { '<leader>fe', builtin.grep_string },

  { '<leader>fb', builtin.buffers },
  { '<leader>tk', builtin.keymaps },

  { '<leader>cm', builtin.git_commits },
  { '<leader>gt', builtin.git_status },

  { 'gd', builtin.lsp_definitions },
  { 'gr', builtin.lsp_references },
  { 'gi', builtin.lsp_implementations },

  { '<leader>dd', dap.list_breakpoints },
}
