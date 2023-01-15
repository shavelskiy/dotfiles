local colors = {}
local selected_theme = ''

local HEX_DIGITS = {
  ['0'] = 0,
  ['1'] = 1,
  ['2'] = 2,
  ['3'] = 3,
  ['4'] = 4,
  ['5'] = 5,
  ['6'] = 6,
  ['7'] = 7,
  ['8'] = 8,
  ['9'] = 9,
  ['a'] = 10,
  ['b'] = 11,
  ['c'] = 12,
  ['d'] = 13,
  ['e'] = 14,
  ['f'] = 15,
  ['A'] = 10,
  ['B'] = 11,
  ['C'] = 12,
  ['D'] = 13,
  ['E'] = 14,
  ['F'] = 15,
}

local hex_to_rgb = function(hex)
  return HEX_DIGITS[string.sub(hex, 1, 1)] * 16 + HEX_DIGITS[string.sub(hex, 2, 2)],
    HEX_DIGITS[string.sub(hex, 3, 3)] * 16 + HEX_DIGITS[string.sub(hex, 4, 4)],
    HEX_DIGITS[string.sub(hex, 5, 5)] * 16 + HEX_DIGITS[string.sub(hex, 6, 6)]
end

local rgb_to_hex = function(r, g, b) return bit.tohex(bit.bor(bit.lshift(r, 16), bit.lshift(g, 8), b), 6) end

local darken = function(hex, pct)
  pct = 1 - pct
  local r, g, b = hex_to_rgb(string.sub(hex, 2))
  r = math.floor(r * pct)
  g = math.floor(g * pct)
  b = math.floor(b * pct)
  return string.format('#%s', rgb_to_hex(r, g, b))
end

local update_colors = function(data)
  data.darkerbg = darken(data.base00, 0.1)

  return data
end

return {
  set_theme = function(theme)
    selected_theme = theme
    colors = update_colors(require('colorscheme.themes.' .. theme))
  end,
  get_colors = function() return colors end,
  get_theme = function() return selected_theme end,
}
