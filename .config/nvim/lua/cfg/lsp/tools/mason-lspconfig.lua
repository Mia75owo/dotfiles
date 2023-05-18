local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

local settings = require("cfg.lsp.settings")

mason_lspconfig.setup({
})

require("mason-lspconfig").setup_handlers {
  function(server_name)
    local cfg = settings[server_name]
    if cfg == nil then cfg = {} end
    lspconfig[server_name].setup(cfg)
  end,
}

return mason_lspconfig
