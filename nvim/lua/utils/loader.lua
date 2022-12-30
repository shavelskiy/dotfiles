local M = {}

M.mapping = function(name)
  for _, map in pairs(require('mapping.' .. name)) do
    vim.keymap.set(map[3] ~= nil and map[3] or 'n', map[1], map[2], { noremap = true, silent = true })
  end
end

M.highlight = function(name)
  local groups = require('colors.' .. name)
  for _, data in pairs(groups) do
    vim.api.nvim_set_hl(0, data[1], data[2])
  end
end

return M
