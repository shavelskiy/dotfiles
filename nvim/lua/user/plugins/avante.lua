local modelMap = {
  minimax = 'minimax/minimax-m2.7',
  deepseek = 'deepseek/deepseek-v3.2',
  opus = 'anthropic/claude-opus-4.7',
}

local model = 'deepseek'

return {
  'yetone/avante.nvim',
  build = 'make',
  event = 'VeryLazy',
  version = false,
  opts = {
    instructions_file = 'avante.md',
    provider = 'openrouter',
    providers = {
      openrouter = {
        __inherited_from = 'openai',
        endpoint = 'https://openrouter.ai/api/v1',
        api_key_name = 'OPENROUTER_API_KEY',
        model = modelMap[model],
      },
    },
    selection = {
      enabled = false,
      hint_display = 'delayed',
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-telescope/telescope.nvim',
    'hrsh7th/nvim-cmp',
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
