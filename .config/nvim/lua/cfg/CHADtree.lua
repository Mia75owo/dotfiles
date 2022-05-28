-- _______ _     _ _______ ______  _______  ______ _______ _______
-- |       |_____| |_____| |     \    |    |_____/ |______ |______
-- |_____  |     | |     | |_____/    |    |    \_ |______ |______

local chadtree_settings = {
  theme = {
    text_colour_set = 'nord'
  }
}

vim.api.nvim_set_var("chadtree_settings", chadtree_settings)

vim.api.nvim_exec([[
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
		\ execute 'CHADopen' | execute 'cd '.argv()[0] | endif
]], false)
