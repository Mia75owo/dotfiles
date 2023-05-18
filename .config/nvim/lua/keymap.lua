-- _     _ _______ __   __ _______ _______  _____
-- |____/  |______   \_/   |  |  | |_____| |_____]
-- |    \_ |______    |    |  |  | |     | |

local s = { noremap = false, silent = true }
local n = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

-- leader
vim.g.mapleader = ' '

-- disable recording of macros and remap them
map("n", "mm", "q", n)
map("n", "q", "<Nop>", n)

-- file browser
map("n", "qq", "<cmd>NvimTreeToggle<CR>", s)
-- comments
map("n", "##", "<plug>NERDCommenterToggle", s)
map("v", "##", "<plug>NERDCommenterToggle", s)
-- just insert console.log()
map("n", "cl", "oconsole.log();<left><left>", s)

-- save
map("n", "<C-s>", "<cmd>w<CR>", s)
map("i", "<C-s>", "<cmd>w<CR>", s)
map("v", "<C-s>", "<cmd>w<CR>", s)

-- =======
-- Buffers
-- =======

map('n', '<A-h>', '<cmd>BufferLineCyclePrev<cr>', s)
map('n', '<A-l>', '<cmd>BufferLineCycleNext<cr>', s)
-- move from buffer to buffer
map('n', 'H', '<cmd>BufferLineMovePrev<cr>', s)
map('n', 'L', '<cmd>BufferLineMoveNext<cr>', s)
-- close buffers
map('n', '<A-c>', '<cmd>BufferLinePickClose<cr>', s)

--move lines up and down
map('n', '<A-j>', '<cmd>m+1<cr>', s)
map('n', '<A-k>', '<cmd>m-2<cr>', s)
map('v', '<A-j>', '<cmd>m .+1<CR>', s)
map('v', '<A-k>', '<cmd>m .-2<CR>', s)

-- run build
map('n', '<A-r>', '<cmd>lua require("yabs"):run_task("build_and_run")<CR>', s)

-- floaterm
map('n', '<A-t>', '<cmd>FloatermToggle<CR>', s)

-- for EMMET
map('n', '<C-h>', '<C-y>,', s)
map('i', '<C-h>', '<C-y>,', s)

-- ===========
-- Diagnostics
-- ===========

map('n', '<leader>es', '<cmd>Telescope diagnostics<CR>', s)
map('n', '<leader>en', '<cmd>Lspsaga diagnostic_jump_next<CR>', s)
map('n', '<leader>eN', '<cmd>Lspsaga diagnostic_jump_prev<CR>', s)
map('n', '<leader>ef', '<cmd>CodeActionMenu<CR>', s)

map('n', '<leader>rn', '<cmd>Lspsaga rename<CR>', s)
map('n', '<leader>lf', '<cmd>Lspsaga lsp_finder<CR>', s)
map('n', '<leader>hd', '<cmd>Lspsaga hover_doc<CR>', s)
map('n', '<leader>dp', '<cmd>Lspsaga preview_definition<CR>', s)

map('n', '<leader>sx', '<cmd>SudoWrite<CR><CMD>x<CR>', s)

-- copy to clipboard
map('n', '<Leader>y', '"+y', s)
map('v', '<Leader>y', '"+y', s)
map('n', '<Leader>d', '"+d', s)
map('v', '<Leader>d', '"+d', s)

-- set the tabwidth to 2 spaces
map('n', '<Leader>st', '<cmd>set tabstop=2<CR><cmd>set shiftwidth=2<CR><cmd>set softtabstop=2<CR>', s)

-- replace paste
map('v', 'p', '"_dP', s)

map('n', '<leader>sf', '<cmd>Telescope find_files<CR>', s)
map('n', '<leader>cm', '<cmd>lua require("notify").dismiss()<CR>', s)
--map('n', '<leader>fm', '<cmd>lua vim.lsp.buf.formatting_sync({tabSize = 2})<CR>', s)
map('n', '<leader>fm', '<cmd>lua vim.lsp.buf.format({tabSize = 2})<CR>', s)
map('n', '<leader>td', '<cmd>TodoTelescope<CR>', s)
map('n', '<leader>yp', '<cmd>Telescope neoclip<CR>', s)
map('n', '<leader>bp', '<cmd>lua require"dap".toggle_breakpoint()<CR>', s)
map('n', '<leader>tsp', '<cmd>TSPlaygroundToggle<CR>', s)
map('n', '<leader>tsr', '<cmd>%s/\\s*\\[\\d*, \\d*\\] - \\[\\d*, \\d*\\]\\s*//g<CR>', s)

-- aerial
map('n', '<leader>a', '<cmd>AerialToggle!<CR>', s)
map('n', '<A-N>', '<cmd>AerialPrev<CR>', s)
map('n', '<A-n>', '<cmd>AerialNext<CR>', s)

-- telescope symbols
map('n', '<C-u>', '<cmd>Telescope symbols<CR>', s)
map('i', '<C-u>', '<cmd>Telescope symbols<CR>', s)
map('v', '<C-u>', '<cmd>Telescope symbols<CR>', s)

-- ctags (tagbar)
map('n', '<leader>ct', '<cmd>TagbarToggle<CR>', s)

-- Insert
map('n', '<leader>mh',
  '<cmd>lua vim.api.nvim_exec([[.!figlet -w999 -d ~/.config/figlet/fonts -f "Cyberlarge" ]]..vim.api.nvim_buf_get_name(0):match("^.+/(.+)$"):match(".*%."):sub(1, -2), false)<CR>'
  , s)

vim.api.nvim_exec([[
	nnoremap <F8> :%s/\<<C-r><C-w>\>//g<Left><Left>
]], false)

-- Git
map('n', '<leader>gc', '<cmd>VGit buffer_diff_preview<CR>', s)
map('n', '<leader>gs', '<cmd>VGit buffer_diff_staged_preview<CR>', s)

map('i', '<C-l>', '<cmd>lua if require("luasnip").expand_or_jumpable() then require("luasnip").expand_or_jump() end<CR>'
  , s)
