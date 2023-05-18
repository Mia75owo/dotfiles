require('cfg.lsp.tools.cmp')

--require('cfg.lsp.tools.lspinstaller')
require('cfg.lsp.tools.mason-lspconfig')
require('cfg.lsp.tools.signature')

--local settings = require('cfg.lsp.settings')

--local lspconfig = require('lspconfig')
--local function on_attach(client, bufnr)
--end

--local servers = {
  --"sumneko_lua",
  --"clangd",
  --"cmake",
  --"html",
  --"rust_analyzer",
  --"taplo",
  --"tsserver",
  --"jdtls",
  --"zls",
  --"lemminx",
  --"svelte"
--}

---- Concat tables
--function TC(t1, ...)
  --for _, v in ipairs(...) do
    --for _, t in ipairs(v) do
      --table.insert(t1, t)
    --end
  --end

  --return t1
--end

--for _, k in ipairs(servers) do
  --local cfg = settings[k]
  --if cfg == nil then cfg = {} end

  --lspconfig[k].setup(TC(
    --cfg,
    --{
      --on_attach = on_attach,
    --}
  --))
--end


vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = 'minimal',
    border = 'rounded',
    source = 'always',
    header = '',
    prefix = '',
  },
})
