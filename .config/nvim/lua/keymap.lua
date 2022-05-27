-- _     _ _______ __   __ _______ _______  _____ 
-- |____/  |______   \_/   |  |  | |_____| |_____]
-- |    \_ |______    |    |  |  | |     | |      

local s = { noremap = false, silent = true }
local n = { noremap = false, silent = false }
local map = vim.api.nvim_set_keymap

-- leader
vim.g.mapleader = ' '

map("n", "q", "<Nop>", s)

map("n", "qq", "<cmd>NvimTreeToggle<CR>", s)
map("n", "##", "<plug>NERDCommenterToggle", s)
map("v", "##", "<plug>NERDCommenterToggle", s)
map("n", "cl", "oconsole.log();<left><left>", s)

map("n", "<C-s>", "<cmd>w<CR>", s)
map('n', '<A-h>', '<cmd>BufferLineCyclePrev<cr>', s)
map('n', '<A-l>', '<cmd>BufferLineCycleNext<cr>', s)
map('n', 'H', '<cmd>BufferLineMovePrev<cr>', s)
map('n', 'L', '<cmd>BufferLineMoveNext<cr>', s)
map('n', '<A-c>', '<cmd>BufferLinePickClose<cr>', s)

--for i=1, 9 do
  --map('n', '<C-'..i..'>' , '<cmd>BufferLineGoToBuffer' .. i .. '<cr>', s)
--end

map('n', '<leader>lc', '<cmd>source $MYVIMRC<cr>', s)

map('n', '<A-j>', '<cmd>m+1<cr>', s)
map('n', '<A-k>', '<cmd>m-2<cr>', s)
map('v', '<A-j>', '<cmd>m .+1<CR>', s)
map('v', '<A-k>', '<cmd>m .-2<CR>', s)

-- run build
map('n', '<A-r>', '<cmd>lua require("yabs"):run_task("build_and_run")<CR>', s)

-- floaterm
map('n', '<A-t>', '<cmd>FloatermToggle<CR>', s)

-- for EMMET
map('n', '<C-k>', '<C-y>,', s)
map('i', '<C-k>', '<C-y>,', s)

map('n', '<leader>es', '<cmd>Telescope diagnostics<CR>', s)
map('n', '<leader>en', '<cmd>Lspsaga diagnostic_jump_next<CR>', s)
map('n', '<leader>eN', '<cmd>Lspsaga diagnostic_jump_prev<CR>', s)
map('n', '<leader>ef', '<cmd>CodeActionMenu<CR>', s)

map('n', '<leader>rn', '<cmd>Lspsaga rename<CR>', s)
map('n', '<leader>lf', '<cmd>Lspsaga lsp_finder<CR>', s)
map('n', '<leader>hd', '<cmd>Lspsaga hover_doc<CR>', s)
map('n', '<leader>dp', '<cmd>Lspsaga preview_definition<CR>', s)

map('n', '<leader>sx', '<cmd>SudoWrite<CR><CMD>x<CR>', s)

map('n', '<Leader>y', '"+y', s)
map('v', '<Leader>y', '"+y', s)
map('n', '<Leader>d', '"+d', s)
map('v', '<Leader>d', '"+d', s)

map('n', '<Leader>st', '<cmd>set tabstop=2<CR><cmd>set shiftwidth=2<CR><cmd>set softtabstop=2<CR>', s)

map('v', 'p', '"_dP', s)

map('n', '<leader>sf', '<cmd>Telescope find_files<CR>', s)
map('n', '<leader>cm', '<cmd>lua require("notify").dismiss()<CR>', s)
map('n', '<leader>gc', '<cmd>VGit buffer_diff_preview<CR>', s)
map('n', '<leader>fm', '<cmd>lua vim.lsp.buf.formatting_sync()<CR>', s)
map('n', '<leader>td', '<cmd>TodoTelescope<CR>', s)
map('n', '<leader>yp', '<cmd>Telescope neoclip<CR>', s)
map('n', '<leader>bp', '<cmd>lua require"dap".toggle_breakpoint()<CR>', s)
map('n', '<leader>tsp', '<cmd>TSPlaygroundToggle<CR>', s)
map('n', '<leader>tsr', '<cmd>%s/\\s*\\[\\d*, \\d*\\] - \\[\\d*, \\d*\\]\\s*//g<CR>', s)

map('n', '<C-u>', '<cmd>Telescope symbols<CR>', s)
map('i', '<C-u>', '<cmd>Telescope symbols<CR>', s)
map('v', '<C-u>', '<cmd>Telescope symbols<CR>', s)

-- Insert
map('n', '<leader>mh', '<cmd>lua vim.api.nvim_exec([[.!figlet -w999 -d ~/.config/figlet/fonts -f "Cyberlarge" ]]..vim.api.nvim_buf_get_name(0):match("^.+/(.+)$"):match(".*%."):sub(1, -2), false)<CR>', s)
