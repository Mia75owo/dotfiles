-- ███╗   ██╗██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██║   ██║██║████╗ ████║
-- ██╔██╗ ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

function sRequire(pl)
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
sRequire('keymap')
sRequire('settings')

-- load plugins
sRequire('loadPacker')
sRequire('impatient')
sRequire('plugins')

-- base UI plugins
sRequire('cfg.devicons')
sRequire('cfg.startify')
sRequire('cfg.nvimtree')
sRequire('cfg.bufferline')
sRequire('cfg.windline')

sRequire('cfg.neoclip')
sRequire('cfg.lspkind')
--sRequire('cfg.vgit')
sRequire('cfg.yabs')
sRequire('cfg.indent')
sRequire('cfg.notify')
sRequire('cfg.autopairs')
sRequire('cfg.todo-comments')
sRequire('cfg.scrollbar')
--sRequire('cfg.twilight')

sRequire('cfg.treesitter')
sRequire('cfg.snippets')
sRequire('cfg.lsp.lsp')
sRequire('cfg.lsp.lspsaga')
sRequire('cfg.lsp.signature')
sRequire('cfg.fidget')
sRequire('cfg.prettier')

-- images in kitty
sRequire('cfg.hologram')

-- Load custom TS grammars
sRequire('TSLanguages')

vim.notify = sRequire("notify")

sRequire('notify')("Finished init!")
