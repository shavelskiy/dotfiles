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

local colors = {
  base00 = '#081e2f',
  base01 = '#092236',
  base02 = '#0e293f',
  base03 = '#1d3b53',
  base04 = '#4b6479',
  base05 = '#a1aab8',
  base06 = '#acb4c2',
  base07 = '#d6deeb',
  base08 = '#ff5874',
  base09 = '#f78c6c',
  base0A = '#ffcb8b',
  base0B = '#a1cd5e',
  base0C = '#7fdbca',
  base0D = '#82aaff',
  base0E = '#c792ea',
  base0F = '#fc514e',
}

colors.darkerbg = darken(colors.base00, 0.1)

return colors
