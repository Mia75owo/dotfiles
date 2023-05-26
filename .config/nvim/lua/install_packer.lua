--  _____  _______ _______ _     _ _______  ______
-- |_____] |_____| |       |____/  |______ |_____/
-- |       |     | |_____  |    \_ |______ |    \_

local fn = vim.fn

-- Install packer
local packer_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(packer_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    packer_path
  }
  print "======================================"
  print "Installed packer please restart Neovim"
  print "======================================"
end
