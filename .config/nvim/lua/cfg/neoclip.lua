-- __   _ _______  _____  _______        _____  _____ 
-- | \  | |______ |     | |       |        |   |_____]
-- |  \_| |______ |_____| |_____  |_____ __|__ |      

require('neoclip').setup({
  history = 1000,
  enable_persistent_history = false,
  filter = nil,
  preview = true,
  default_register = '"',
  default_register_macros = 'q',
  enable_macro_history = true,
  content_spec_column = false,
  on_paste = {
    set_reg = false,
  },
  on_replay = {
    set_reg = false,
  },
  keys = {
    telescope = {
      i = {
        select = '<cr>',
        paste = '<c-p>',
        paste_behind = '<c-P>',
        replay = '<c-q>',
        custom = {},
      },
      n = {
        select = '<cr>',
        paste = 'p',
        paste_behind = 'P',
        replay = 'q',
        custom = {},
      },
    }
  },
})
require('telescope').load_extension('neoclip')
