-- Leader key (HARUS paling atas, sebelum plugin)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- Core configuration
require 'config.options'
require 'config.keymaps'
require 'config.autocmds'

-- Plugins (lazy.nvim entry point)
require 'plugins.lazy'

require 'config.ui'
