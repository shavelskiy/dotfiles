local moveAction = function(left)
  local lib = require 'nvim-tree.lib'
  local api = require 'nvim-tree.api'

  local node = lib.get_node_at_cursor()

  if not node then
    print 'not node'
    return
  end

  if left then
    if node.open == true then
      api.node.open.edit()
    else
      api.node.navigate.parent()
    end
  else
    if node.open == false then
      api.node.open.edit()
    else
      local r, c = unpack(vim.api.nvim_win_get_cursor(0))
      vim.api.nvim_win_set_cursor(0, { r + 1, c })
    end
  end
end

require('nvim-tree').setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = false,
  sync_root_with_cwd = true,
  update_focused_file = {
    enable = false,
    update_root = false,
  },
  view = {
    adaptive_size = true,
    side = 'left',
    width = 25,
    hide_root_folder = true,
    mappings = {
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
  git = {
    enable = true,
    ignore = false,
  },
  filesystem_watchers = {
    enable = false,
  },
  actions = {
    open_file = {
      resize_window = true,
    },
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = 'none',

    indent_markers = {
      enable = false,
    },

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = false,
      },

      glyphs = {
        default = '',
        symlink = '',
        folder = {
          default = '',
          empty = '',
          empty_open = '',
          open = '',
          symlink = '',
          symlink_open = '',
          arrow_open = '',
          arrow_closed = '',
        },
        git = {
          unstaged = '✗',
          staged = '✓',
          unmerged = '',
          renamed = '➜',
          untracked = '★',
          deleted = '',
          ignored = '◌',
        },
      },
    },
  },
}

require('utils.loader').mapping 'nvimtree'
