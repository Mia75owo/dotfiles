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

-- refresh plugins when the plugin file is saved
vim.cmd [[
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]]

-- load packer
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print "Packer init error"
  return
end

packer.startup{{...},
  config = {
    -- Move to lua dir so impatient.nvim can cache it
    compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
  }
}
require('packer_compiled')

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  }
}

return packer
