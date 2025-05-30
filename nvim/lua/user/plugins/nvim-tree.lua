local moveAction = function(left)
  local core = require 'nvim-tree.core'
  local api = require 'nvim-tree.api'

  local node = core.get_explorer():get_node_at_cursor()

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

local on_attach = function(bufnr)
  local api = require 'nvim-tree.api'

  local function opts(desc) return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true } end

  vim.keymap.set('n', 'a', api.fs.create, opts 'Create')
  vim.keymap.set('n', 'd', api.fs.trash, opts 'Trash')
  vim.keymap.set('n', 'D', api.fs.remove, opts 'Delete')
  vim.keymap.set('n', 'e', api.fs.rename_basename, opts 'Rename: Basename')
  vim.keymap.set('n', 'r', api.fs.rename, opts 'Rename')
  vim.keymap.set('n', '<C-r>', api.fs.rename_sub, opts 'Rename: Omit Filename')
  vim.keymap.set('n', 'c', api.fs.copy.node, opts 'Copy')
  vim.keymap.set('n', 'gy', api.fs.copy.absolute_path, opts 'Copy Absolute Path')
  vim.keymap.set('n', 'y', api.fs.copy.filename, opts 'Copy Name')
  vim.keymap.set('n', 'Y', api.fs.copy.relative_path, opts 'Copy Relative Path')
  vim.keymap.set('n', 'p', api.fs.paste, opts 'Paste')
  vim.keymap.set('n', 'x', api.fs.cut, opts 'Cut')

  vim.keymap.set('n', '<C-t>', api.node.open.tab, opts 'Open: New Tab')
  vim.keymap.set('n', '<CR>', api.node.open.edit, opts 'Open')
  vim.keymap.set('n', '<Tab>', api.node.open.preview, opts 'Open Preview')
  vim.keymap.set('n', 's', api.node.open.horizontal, opts 'Open: Horizontal Split')
  vim.keymap.set('n', 'v', api.node.open.vertical, opts 'Open: Vertical Split')
  vim.keymap.set('n', 'o', api.node.open.edit, opts 'Open')
  vim.keymap.set('n', 'O', api.node.open.no_window_picker, opts 'Open: No Window Picker')
  vim.keymap.set('n', '<BS>', api.node.navigate.parent_close, opts 'Close Directory')
  vim.keymap.set('n', '>', api.node.navigate.sibling.next, opts 'Next Sibling')
  vim.keymap.set('n', '<', api.node.navigate.sibling.prev, opts 'Previous Sibling')
  vim.keymap.set('n', 'J', api.node.navigate.sibling.last, opts 'Last Sibling')
  vim.keymap.set('n', 'K', api.node.navigate.sibling.first, opts 'First Sibling')
  vim.keymap.set('n', 'P', api.node.navigate.parent, opts 'Parent Directory')
  vim.keymap.set('n', 's', api.node.run.system, opts 'Run System')
  vim.keymap.set('n', '.', api.node.run.cmd, opts 'Run Command')
  vim.keymap.set('n', '<C-k>', api.node.show_info_popup, opts 'Info')

  vim.keymap.set('n', '-', api.tree.change_root_to_parent, opts 'Up')
  vim.keymap.set('n', 'E', api.tree.expand_all, opts 'Expand All')
  vim.keymap.set('n', 'q', api.tree.close, opts 'Close')
  vim.keymap.set('n', 'R', api.tree.reload, opts 'Refresh')
  vim.keymap.set('n', 'S', api.tree.search_node, opts 'Search')
  vim.keymap.set('n', 'W', api.tree.collapse_all, opts 'Collapse')

  vim.keymap.set('n', 'B', api.tree.toggle_no_buffer_filter, opts 'Toggle No Buffer')
  vim.keymap.set('n', 'C', api.tree.toggle_git_clean_filter, opts 'Toggle Git Clean')
  vim.keymap.set('n', 'H', api.tree.toggle_hidden_filter, opts 'Toggle Dotfiles')
  vim.keymap.set('n', 'I', api.tree.toggle_gitignore_filter, opts 'Toggle Git Ignore')
  vim.keymap.set('n', 'U', api.tree.toggle_custom_filter, opts 'Toggle Hidden')
  vim.keymap.set('n', 'g?', api.tree.toggle_help, opts 'Help')

  vim.keymap.set('n', 'm', api.marks.toggle, opts 'Toggle Bookmark')
  vim.keymap.set('n', 'bmv', api.marks.bulk.move, opts 'Move Bookmarked')

  vim.keymap.set('n', 'F', api.live_filter.clear, opts 'Clean Filter')
  vim.keymap.set('n', 'f', api.live_filter.start, opts 'Filter')

  vim.keymap.set('n', 'h', function() moveAction(true) end, opts 'leftAction')
  vim.keymap.set('n', 'l', function() moveAction(false) end, opts 'rightAction')
end

return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      on_attach = on_attach,
      view = {
        adaptive_size = true,
      },
      renderer = {
        highlight_git = true,
        root_folder_label = false,
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
