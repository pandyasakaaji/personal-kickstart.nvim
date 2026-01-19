return {
  {
    'rcarriga/nvim-notify',
    lazy = false,
    config = function()
      local notify = require 'notify'

      notify.setup {
        stages = 'static',
        timeout = 3000,
        render = 'default',

        background_colour = '#000000',
        -- max_height = function()
        --   return math.floor(vim.o.lines * 0.75)
        -- end,
        -- max_width = function()
        --   return math.floor(vim.o.columns * 0.75)
        -- end,
      }

      vim.notify = notify

      -- Set transparansi spesifik notify di sini
      vim.api.nvim_set_hl(0, 'NotifyBackground', { bg = 'none', ctermbg = 'none' })
    end,
  },

  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
    opts = {
      -- Tambahkan ini agar Noice tidak memaksa background sendiri
      views = {
        cmdline_popup = {
          border = {
            style = 'rounded',
            padding = { 0, 1 },
          },
          filter_options = { winblend = 0 }, -- Paksa winblend 0
        },
        hover = {
          border = { style = 'rounded' },
          position = { row = 2, col = 2 },
          win_options = { winblend = 0 }, -- Paksa winblend 0
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = true,
        lsp_doc_border = true,
      },
      routes = {
        {
          filter = {
            event = 'msg_show',
            kind = '',
            find = 'written',
          },
          opts = { skip = false }, -- Pastikan tidak di-skip
        },
      },
    },
  },
}
