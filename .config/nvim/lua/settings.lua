-- _______ _______ _______ _______ _____ __   _  ______ _______
-- |______ |______    |       |      |   | \  | |  ____ |______
-- ______| |______    |       |    __|__ |  \_| |_____| ______|

local o = vim.opt
local g = vim.g

local opt = {
  backup = false,
  cmdheight = 1,
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  smartcase = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = false,
  shiftwidth = 2,
  softtabstop = 2,
  tabstop = 2,
  cursorline = true,
  number = true,
  relativenumber = true,
  wrap = false,
  scrolloff = 8,
}

local global = {
  dracula_colorterm = 0,
  ["clang_format#style_options"] = "160",
}

for k, v in pairs(opt) do
  vim.opt[k] = v
end
for k, v in pairs(global) do
  vim.g[k] = v
end

g.instant_username = "Mia"
g.vscode_style = "dark"
g.vscode_transparency = 1
g.vscode_italic_comment = 1

-- spellchecking
g["lexical#speel"] = 1
g["lexical#spelllang"] = { "de_20", "en_us" }
local lexicalAU = vim.api.nvim_create_augroup('lexical', {clear = true})
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown,mkd',
  group = lexicalAU,
  command = 'highlight String guifg=#FFEB95'
})

-- spell check
vim.cmd[[
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0 })
]]

g["imager#filetypes"] = { ".md" }

-- ===================
-- themes/colorschemes
-- ===================

-- tokyonight settings
g.tokyonight_transparent = true
g.tokyonight_transparent_sidebar = true
g.tokyonight_terminal_colors = true
g.tokyonight_dark_float = false
vim.cmd("colorscheme tokyonight")
--vim.cmd("colorscheme onedark")
--vim.cmd("colorscheme vscode")
--vim.cmd("colorscheme nord")


vim.cmd("highlight link FidgetTitle Function")
vim.cmd("highlight link FidgetTask hlLineNr")
