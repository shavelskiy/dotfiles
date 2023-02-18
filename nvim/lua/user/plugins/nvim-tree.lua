return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local moveAction = function(left)
      local lib = require 'nvim-tree.lib'
      local api = require 'nvim-tree.api'

      local node = lib.get_node_at_cursor()

      if not node then return end

      if left then
        if node.open == true then
          api.node.open.edit()
        else
          api.node.navigate.parent()
        end
      else
        if node.open == false then api.node.open.edit() end
      end
    end

    require('nvim-tree').setup {
      open_on_setup = true,
      view = {
        hide_root_folder = true,
        adaptive_size = true,
        mappings = {
          custom_only = false,
          list = {
            {
              key = 'h',
              action = 'leftAction',
              action_cb = function() moveAction(true) end,
            },
            {
              key = 'l',
              action = 'rightAction',
              action_cb = function() moveAction(false) end,
            },
            { key = 's', action = 'split' },
            { key = 'v', action = 'vsplit' },
          },
        },
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = false,
          },
          glyphs = {
            folder = {
              empty = '',
              empty_open = '',
            },
          },
        },
      },
      git = {
        ignore = false,
      },
    }
  end,
  keys = {
    { '<leader>e', ':NvimTreeFocus<cr>' },
    { '<C-n>', ':NvimTreeToggle<cr>' },
  },
}
