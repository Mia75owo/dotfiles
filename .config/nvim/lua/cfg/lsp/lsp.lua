local lspkind = require('lspkind')

local source_mapping = {
	buffer = "[Buffer]",
	nvim_lsp = "[LSP]",
	nvim_lua = "[Lua]",
	cmp_tabnine = "[TN]",
	path = "[Path]",
  emoji = "[Emoji]",
  ultisnips = "[snippet]"
}

local luasnip = require'luasnip'
local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      require'luasnip'.lsp_expand(args.body)
    end
  },
  mapping = {
  ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
  ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
  ['<C-e>'] = cmp.mapping.close(),
  ['<Tab>'] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.confirm({select = true})
    elseif luasnip.expand_or_jumpable() then
      luasnip.expand_or_jump()
    else fallback()
    end
  end, { "i", "s" })
},
formatting = {
  format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 50,
    })
  },
  sources = cmp.config.sources({
    { name = "ultisnips" },
    { name = 'cmp_tabnine' },
    { name = 'nvim_lsp' },
    { name = 'emoji' },
  }, {
    { name = 'buffer' },
  })
})

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lsp_installer = require("nvim-lsp-installer")

local all_own_ops = require("cfg.lsp.settings")
lsp_installer.on_server_ready(function(server)
	local ops = {capabilities = capabilities}

	local own_ops = all_own_ops[server.name]
	if own_ops ~= nil then
		for i=1,#own_ops do
			ops[#ops+1] = own_ops[i]
		end
	end

	server:setup(ops)
	vim.cmd [[ do User LspAttachBuffers ]]
end)

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
