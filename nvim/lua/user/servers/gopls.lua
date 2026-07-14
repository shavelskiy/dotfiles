return {
  filetypes = { 'go', 'go.mod' },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow = true,
        ST1000 = false,
      },
      staticcheck = true,
    },
  },
}
