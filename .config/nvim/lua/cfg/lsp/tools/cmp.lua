local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local lspkind = require('./lspkind')
local luasnip = require('./luasnip')

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
      cmp.confirm({select = true})
      --if luasnip.expand_or_jumpable() then
        --luasnip.expand_or_jump()
      --elseif cmp.visible() then
        --cmp.confirm({select = true})
      --else fallback()
      --if cmp.visible() then
        --cmp.confirm({select = true})
      --elseif luasnip.expand_or_jumpable() then
        --luasnip.expand_or_jump()
      --else fallback()
      --end
    end, { "i", "s" }),
  },
  formatting = {
    format = lspkind.cmp_format({
        mode = 'symbol',
        maxwidth = 50,
      })
  },
  window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
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

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
