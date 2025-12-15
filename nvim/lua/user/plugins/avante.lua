return {
  'yetone/avante.nvim',
  build = 'make',
  event = 'VeryLazy',
  version = false,
  opts = {
    instructions_file = 'avante.md',
    provider = 'gemini',
    providers = {
      openai = {
        model = 'gpt-4o-mini',
      },
      gemini = {
        model = 'gemini-2.5-flash',
      },
      ollama = {
        model = 'codellama:7b',
        server = 'http://localhost:11434',
        extra_params = {
          num_gpu = 1,
        },
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
    --- The below dependencies are optional,
    -- 'nvim-mini/mini.pick', -- for file_selector provider mini.pick

    'nvim-tree/nvim-web-devicons',
    'nvim-telescope/telescope.nvim',
    'hrsh7th/nvim-cmp',

    -- 'ibhagwan/fzf-lua', -- for file_selector provider fzf
    -- 'stevearc/dressing.nvim', -- for input provider dressing
    -- 'folke/snacks.nvim', -- for input provider snacks
    -- 'zbirenbaum/copilot.lua', -- for providers='copilot'
    -- {
    --   -- support for image pasting
    --   'HakonHarnes/img-clip.nvim',
    --   event = 'VeryLazy',
    --   opts = {
    --     -- recommended settings
    --     default = {
    --       embed_image_as_base64 = false,
    --       prompt_for_file_name = false,
    --       drag_and_drop = {
    --         insert_mode = true,
    --       },
    --       -- required for Windows users
    --       use_absolute_path = true,
    --     },
    --   },
    -- },
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
