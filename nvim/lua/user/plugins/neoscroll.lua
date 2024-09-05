return {
  'karb94/neoscroll.nvim',
  keys = {
    { '<C-u>', function() require('neoscroll').ctrl_u { duration = 100 } end },
    { '<C-d>', function() require('neoscroll').ctrl_d { duration = 100 } end },
    { '<C-b>', function() require('neoscroll').ctrl_b { duration = 100 } end },
    { '<C-f>', function() require('neoscroll').ctrl_f { duration = 100 } end },
  },
}
