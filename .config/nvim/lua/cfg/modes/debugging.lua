local libmodal = require 'libmodal'

-- create a new layer
local layer = {
  n = {
    b = {
      rhs = '<cmd>lua require"dap".toggle_breakpoint()<CR>'
    },
    n = {
      rhs = '<cmd>lua require"dap".step_over()<CR>'
    },
    x = {
      rhs = '<cmd>lua require"dap".step_into()<CR>'
    },
    o = {
      rhs = '<cmd>lua require"dapui".open()<CR>'
    },
    O = {
      rhs = '<cmd>lua require"dapui".close()<CR>'
    },
  },
}

-- local llayer = libmodal.layer.new(layer)

local function enter()
  libmodal.layer.enter(layer, '<Esc>')
end

vim.api.nvim_set_keymap('n', '<leader>md', '', { callback = enter })
