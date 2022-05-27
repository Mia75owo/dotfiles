--███╗   ██╗██╗   ██╗██╗███╗   ███╗
--████╗  ██║██║   ██║██║████╗ ████║
--██╔██╗ ██║██║   ██║██║██╔████╔██║
--██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
--██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
--╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

-- add vimfiles directory
vim.api.nvim_exec("set runtimepath+=/usr/share/vim/vimfiles", false)

-- Load settings and plugins in order of the importancy
-- so when there is an error it loads the most important
-- things first

require('impatient').enable_profile()

-- base settings
require('keymap')
require('settings')
require('plugins')

-- base UI plugins
require('cfg.devicons')
require('cfg.startify')
require('cfg.nvimtree')
require('cfg.bufferline')
require('cfg.windline')

require('cfg.neoclip')
require('cfg.lspkind')
--require('cfg.vgit')
require('cfg.yabs')
require('cfg.indent')
require('cfg.notify')
require('cfg.autopairs')
require('cfg.todo-comments')
require('cfg.scrollbar')
--require('cfg.twilight')

require('cfg.treesitter')
require('cfg.snippets')
require('cfg.lsp.lsp')
require('cfg.lsp.lspsaga')
require('cfg.lsp.signature')
require('cfg.fidget')
require('cfg.prettier')

-- Load custom TS grammars
require('TSLanguages')

vim.notify = require("notify")

require('notify')("Finished init!")