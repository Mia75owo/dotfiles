-- _______ _______ _______  _____  __   _
-- |  |  | |_____| |______ |     | | \  |
-- |  |  | |     | ______| |_____| |  \_|

require("mason").setup({
  max_concurrent_installers = 4,
  ui = {
    check_outdated_packages_on_open = true,
    border = "single",

    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },

    keymaps = {
      toggle_package_expand = "<CR>",
      install_package = "i",
      update_package = "u",
      check_package_version = "c",
      update_all_packages = "U",
      check_outdated_packages = "C",
      uninstall_package = "X",
      cancel_installation = "<C-c>",
      apply_language_filter = "<C-f>",
    },
  }
})

require("mason-nvim-dap").setup({
  automatic_setup = true,
  handlers = {
    function(source_name)
      require('mason-nvim-dap.automatic_setup')(source_name)
    end,
  }
})
