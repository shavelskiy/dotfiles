local function button(sc, txt, keybind)
  local sc_ = sc:gsub('%s', ''):gsub('SPC', '<leader>')

  local opts = {
    position = 'center',
    text = txt,
    shortcut = sc,
    cursor = 5,
    width = 36,
    align_shortcut = 'right',
    hl = 'AlphaButtons',
  }

  if keybind then opts.keymap = { 'n', sc_, keybind, { noremap = true, silent = true } } end

  return {
    type = 'button',
    val = txt,
    on_press = function()
      local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
      vim.api.nvim_feedkeys(key, 'normal', false)
    end,
    opts = opts,
  }
end

local ascii = {
  '                ____                ',
  '               /   /\\               ',
  '              /___/  \\              ',
  '             /   /\\  /\\             ',
  '            /   /  \\/  \\            ',
  '           /   /   /\\   \\           ',
  '          /   /   /  \\   \\          ',
  '         /   /   /\\   \\   \\         ',
  '        /   /   /  \\   \\   \\        ',
  '       /___/___/____\\   \\   \\       ',
  '      /   /          \\   \\  /\\      ',
  '     /___/____________\\___\\/  \\     ',
  '     \\   \\             \\   \\  /     ',
  '      \\___\\_____________\\___\\/      ',
}

require('alpha').setup {
  layout = {
    { type = 'padding', val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.3) } },
    {
      type = 'text',
      val = ascii,
      opts = {
        position = 'center',
        hl = 'AlphaHeader',
      },
    },
    { type = 'padding', val = 2 },
    {
      type = 'group',
      val = {
        button('SPC f f', '  Find File  ', ':Telescope find_files<CR>'),
        button('SPC f w', '  Find Word  ', ':Telescope live_grep<CR>'),
      },
      opts = {
        spacing = 1,
      },
    },
  },
  opts = {},
}

require('utils.loader').highlight 'alpha'
