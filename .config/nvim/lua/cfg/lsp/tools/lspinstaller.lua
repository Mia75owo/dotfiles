local lsp_installer = require("nvim-lsp-installer")

local all_own_ops = require("cfg.lsp.settings")
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lsp_installer.setup({
  ui = {
    border = "single"
  }
})

return lsp_installer
