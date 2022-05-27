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
  --['<Tab>'] = cmp.mapping.confirm({select = true}),
  ['<Tab>'] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.confirm({select = true})
    elseif luasnip.expand_or_jumpable() then
      luasnip.expand_or_jump()
    else fallback()
    end
  end, { "i", "s" })
  --['<CR>'] = cmp.mapping.confirm({ select = true }),
},
formatting = {
  --format = function(entry, vim_item)
    --vim_item.kind = lspkind.presets.default[vim_item.kind]
    --local menu = source_mapping[entry.source.name]
    --if entry.source.name == 'cmp_tabnine' then
      --if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
        --menu = entry.completion_item.data.detail .. ' ' .. menu
      --end
      --vim_item.kind = ''
    --end
    --vim_item.menu = menu
    --return vim_item
  --end,

  format = lspkind.cmp_format({
      mode = 'symbol', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      --before = function (entry, vim_item)
        --local menu = source_mapping[entry.source.name]
        --if entry.source.name == 'cmp_tabnine' then
          --if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
            --menu = entry.completion_item.data.detail .. ' ' .. menu
          --end
          --vim_item.kind = ''
        --end
      --end
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

lsp_installer.on_server_ready(function(server)
    local opts = {capabilities = capabilities}

    if server.name == "sumneko_lua" then
      local lua_opts = require("cfg.lsp.settings")
      opts = vim.tbl_deep_extend("force", lua_opts, opts)
    end

    server:setup(opts)
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
