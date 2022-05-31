M = {}

local filetypes = { "md" }

M.foo = function()
	print("owo")
	print("uwu")
end

M.imgEnable = function(opts)
	print("foo")
end

M.imgDisable = function(opts)
	print("baa")
end


vim.api.nvim_create_user_command('ImgEnable', M.imgEnable, { nargs = 0 })
vim.api.nvim_create_user_command('ImgDisable', M.imgDisable, { nargs = 0 })

local hologram = require("hologram")

return M
