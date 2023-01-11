local lib = require 'nvim-tree.lib'

return function(exec)
  if vim.bo[vim.api.nvim_win_get_buf(0)].ft ~= 'NvimTree' then
    exec()
    return
  end

  local node = lib.get_node_at_cursor()

  if not node then return end

  if node.open == nil then
    exec { search_dirs = { node.parent.absolute_path } }
  else
    exec { search_dirs = { node.absolute_path } }
  end
end
