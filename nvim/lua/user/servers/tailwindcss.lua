return {
  root_dir = function(fname)
    local root_pattern =
      require('lspconfig').util.root_pattern('tailwind.config.cjs', 'tailwind.config.js', 'tailwind.config.ts', 'postcss.config.js', 'postcss.config.mjs', 'vite.config.ts')
    return root_pattern(fname)
  end,
}
