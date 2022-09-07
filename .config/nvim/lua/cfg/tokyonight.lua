-- _______  _____  _     _ __   __  _____  __   _ _____  ______ _     _ _______
--    |    |     | |____/    \_/   |     | | \  |   |   |  ____ |_____|    |   
--    |    |_____| |    \_    |    |_____| |  \_| __|__ |_____| |     |    |   

require("tokyonight").setup({
  style = "storm",
  transparent = true,
  terminal_colors = true,
  styles = {
    comments = "italic",
    keywords = "italic",
    functions = "NONE",
    variables = "NONE",
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
  },
  sidebars = {}, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
})

--g.tokyonight_transparent = true
--g.tokyonight_transparent_sidebar = true
--g.tokyonight_terminal_colors = true
--g.tokyonight_dark_float = false
