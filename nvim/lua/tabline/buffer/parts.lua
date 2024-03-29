local devicons_present, devicons = pcall(require, 'nvim-web-devicons')
local is_buf_valid = require('tabline.api').is_buf_valid
local utils = require 'tabline.utils'

local is_active = function(bufnr) return bufnr == vim.api.nvim_get_current_buf() or vim.fn.bufwinnr(bufnr) ~= -1 and utils.is_from_offset() end

local new_hl = function(group1, group2)
  local new_group = 'Tabline' .. group1 .. group2
  vim.api.nvim_set_hl(0, new_group, {
    fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID(group1)), 'fg#'),
    bg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID(group2)), 'bg#'),
  })
  return '%#' .. new_group .. '#'
end

local get_icon = function(name, bufnr)
  if not devicons_present then return '' end

  local icon, icon_hl = devicons.get_icon(name, string.match(name, '%a+$'), { default = true })

  local success, hl = pcall(new_hl, icon_hl, (is_active(bufnr) and vim.g.tabline_show_pick ~= true) and 'TablineBufOn' or 'TablineBufOff')
  if not success then return '' end

  return {
    hl = hl,
    icon = icon,
  }
end

local update_name = function(name, bufnr)
  for _, value in ipairs(vim.t.bufs) do
    if is_buf_valid(value) then
      if name == vim.fn.fnamemodify(vim.api.nvim_buf_get_name(value), ':t') and value ~= bufnr then name = utils.get_unique_name(bufnr, value) end
    end
  end

  return name
end

local get_pick_data = function(bufnr)
  if vim.g.tabline_show_pick == true then
    for i, buffer in ipairs(vim.t.bufs) do
      if buffer == bufnr then return { hl = '%#TablinePick#', char = utils.number_to_char(i) } end
    end
  end

  return nil
end

local get_highlight = function(bufnr)
  if vim.g.tabline_show_pick == true then return '%#TablineBufOff#' end

  if is_active(bufnr) then return vim.bo[bufnr].modified and '%#TablineBufOnModified#' or '%#TablineBufOn#' end

  return vim.bo[bufnr].modified and '%#TablineBufOffModified#' or '%#TablineBufOff#'
end

return function(bufnr)
  local name = (#vim.api.nvim_buf_get_name(bufnr) ~= 0) and vim.fn.fnamemodify(vim.api.nvim_buf_get_name(bufnr), ':t') or ' No Name '

  local icon_data = get_icon(name, bufnr)

  name = (#name > 40 and string.sub(name, 1, 30) .. '..') or name

  return {
    icon = {
      hl = icon_data.hl,
      icon = icon_data.icon,
    },
    pick = get_pick_data(bufnr),
    hl = get_highlight(bufnr),
    name = update_name(name, bufnr),
    forse_size = nil,
  }
end
