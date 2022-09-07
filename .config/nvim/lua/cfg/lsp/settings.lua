local M = {}

M.sumneko_lua = {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    }
  }
}
M.rust_analyzer = {
  cmd = { "rust-analyzer" },
  settings = {
    ["rust-analyzer"] = {
      procMacro = {
        enable = false,
      },
      cachePriming = {
        numThreads = 4,
      },
      diagnostics = {
        experimental = {
          enable = true,
        },
      },
    },
  }
}

return M
