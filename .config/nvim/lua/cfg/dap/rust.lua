local dap = require("dap")
local projectName = function(p) return string.match(p, "([^/]*)$") end

dap.configurations.rust = {
  {
    type = "codelldb",
    request = "launch",
    name = "Launch file",
    cargo = {
      args = { "build" },
      problemMatcher = "$rustc",
    },
    sourceLanguages = { "rust" },
    --preRunCommands = { "$cargo build" },
    program = "${workspaceFolder}/target/debug/" .. projectName(vim.fn.getcwd()), -- This configuration will launch the current file if used.
  },
}
