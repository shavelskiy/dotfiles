return {
  root_dir = function(fname)
    local root_pattern = require('lspconfig').util.root_pattern('tailwind.config.cjs', 'tailwind.config.js', 'tailwind.config.ts', 'postcss.config.js')
    return root_pattern(fname)
  end,
}
