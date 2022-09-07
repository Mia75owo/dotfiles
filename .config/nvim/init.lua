-- ███╗   ██╗██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██║   ██║██║████╗ ████║
-- ██╔██╗ ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

function SRequire(pl)
  local status_ok, ret = pcall(require, pl)
  if not status_ok then
    print("Error loading " .. pl)
    return
  end
  return ret
end

-- add vimfiles directory
vim.api.nvim_exec("set runtimepath+=/usr/share/vim/vimfiles", false)

-- Load settings and plugins in order of the importancy
-- so when there is an error it loads the most important
-- things first

-- load the theme
SRequire('cfg.tokyonight')

-- base settings
SRequire('keymap')
SRequire('settings')

-- load plugins
SRequire('impatient')
SRequire('plugins')

-- base UI plugins
SRequire('cfg.devicons')
SRequire('cfg.startify')
SRequire('cfg.nvimtree')
SRequire('cfg.bufferline')
SRequire('cfg.windline')

SRequire('cfg.neoclip')
SRequire('cfg.lspkind')
SRequire('cfg.vgit')
--SRequire('cfg.yabs')
SRequire('cfg.indent')
SRequire('cfg.notify')
SRequire('cfg.autopairs')
SRequire('cfg.todo-comments')
SRequire('cfg.scrollbar')
--SRequire('cfg.twilight')

SRequire('cfg.neoscroll')

SRequire('cfg.treesitter')
SRequire('cfg.snippets')
SRequire('cfg.fidget')
SRequire('cfg.prettier')

SRequire('cfg.lsp.lsp')

-- Rust tools
--SRequire('cfg.rust-tools')

-- WARN: these 2 files should be used with care bc they probably dont work on most systems (its ok to just comment them out)
-- images in kitty
if vim.o.term == "xterm-kitty" then
    SRequire('cfg.hologram')
end

-- Load custom TS grammars
SRequire('TSLanguages')

vim.notify = SRequire("notify")

SRequire('notify')("Finished init!")
