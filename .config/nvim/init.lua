-- ███╗   ██╗██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██║   ██║██║████╗ ████║
-- ██╔██╗ ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

function SRequire(pl)
	local status_ok, ret = pcall(require, pl)
	if not status_ok then
		print("Error loading "..pl)
		return
	end
	return ret
end

-- add vimfiles directory
vim.api.nvim_exec("set runtimepath+=/usr/share/vim/vimfiles", false)

-- Load settings and plugins in order of the importancy
-- so when there is an error it loads the most important
-- things first

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
--SRequire('cfg.vgit')
SRequire('cfg.yabs')
SRequire('cfg.indent')
SRequire('cfg.notify')
SRequire('cfg.autopairs')
SRequire('cfg.todo-comments')
SRequire('cfg.scrollbar')
--SRequire('cfg.twilight')

SRequire('cfg.treesitter')
SRequire('cfg.snippets')
SRequire('cfg.lsp.lsp')
SRequire('cfg.lsp.lspsaga')
SRequire('cfg.lsp.signature')
SRequire('cfg.fidget')
SRequire('cfg.prettier')

-- images in kitty
SRequire('cfg.hologram')

-- Load custom TS grammars
SRequire('TSLanguages')

vim.notify = SRequire("notify")

SRequire('notify')("Finished init!")
