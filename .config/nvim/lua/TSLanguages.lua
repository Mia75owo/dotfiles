-- _______ _______        _______ __   _  ______ _     _ _______  ______ _______ _______
--    |    |______ |      |_____| | \  | |  ____ |     | |_____| |  ____ |______ |______
--    |    ______| |_____ |     | |  \_| |_____| |_____| |     | |_____| |______ ______|

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.rawrscript = {
	install_info = {
		url = "~/code/lang/rawrc/tree-sitter-rawrscript",
		--url = "~/rawrc/tree-sitter-rawrscript",
		--url = "~/rawr/tree-sitter-rawrscript",
		--url = "~/rawrBKU/tree-sitter-rawrscript",
		--url = "~/rawrNEWBKU2/tree-sitter-rawrscript",
		--url = "~/tree-sitter-rawrscript",
		files = { "src/parser.c", "src/scanner.cc" },
		branch = "main",
		generate_requires_npm = true,
		requires_generate_from_grammar = true,
	},
	filetype = "rawrscript",
}
parser_config.tstl = {
	install_info = {
		url = "~/.config/nvim/tss/tree-sitter-tstl",
		files = { "src/parser.c", "src/scanner.cc" },
		branch = "main",
		generate_requires_npm = true,
		requires_generate_from_grammar = true,
	},
	filetype = "tstl",
}
parser_config.test = {
	install_info = {
		url = "~/tmp/tstest",
		files = { "src/parser.c", "src/scanner.c" },
		branch = "main",
		generate_requires_npm = true,
		requires_generate_from_grammar = true,
	},
	filetype = "test",
}

--parser_config.nim = {
	--install_info = {
		--url = "~/.config/nvim/tss/tree-sitter-nim",
		--files = { "src/parser.c", "src/scanner.c" },
		--branch = "main",
		--generate_requires_npm = true,
		--requires_generate_from_grammar = true,
	--},
	--filetype = "nim",
--}
vim.cmd[[
	au! BufRead,BufNewFile,BufNewFile *.rawrs		set filetype=rawrscript
	au! BufRead,BufNewFile,BufNewFile rawrc			set filetype=rawrscript

	au! BufRead,BufNewFile,BufNewFile *.tstl			set filetype=tstl
	au! BufRead,BufNewFile,BufNewFile *.test			set filetype=test

	au! BufRead,BufNewFile,BufNewFile *.mjs			set filetype=javascript
	au! BufRead,BufNewFile,BufNewFile *.mts			set filetype=typescript

	au! BufRead,BufReadPost,BufNewFile *.nim set filetype=nim
]]
