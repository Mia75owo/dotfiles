-- __   _ _    _ _____ _______ _______  ______ _______ _______
-- | \  |  \  /    |   |  |  |    |    |_____/ |______ |______
-- |  \_|   \/   __|__ |  |  |    |    |    \_ |______ |______

require'nvim-tree'.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {
			"^\\.git",
			"^node_modules",
			"^Cargo.lock",
			"^yarn.lock",
			"^.yarn",
			"^.cache",
			"^compile_commands.json",
			"^.*\\.class",
			"^.*\\.o",
			"^.*\\.d",
			"^.*\\.gch",
		}
  },
  view = {
    width = 30,
    hide_root_folder = false,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {
				{ key = { "<C-c>" }, action = "cd", mode = "n" },
				{ key = { "y" }, action = "copy", mode = "n" },
				{ key = { "i" }, action = "toggle_file_info", mode = "n" },
				{ key = { "I" }, action = "toggle_git_ignored", mode = "n" },
			}
    }
  },
	renderer = {
		highlight_opened_files = "name",
		indent_markers = {
			enable = true,
		},
		icons = {
			show = {
			},
		},
		special_files = {
		}
	},
	git = {
		enable = true,
		ignore = true,
	},
	actions = {
		change_dir = {
			restrict_above_cwd = false,
		}
	},
	live_filter = {
		always_show_folders = false,
	},
	sort_by = "extension",
}

vim.g.nvim_tree_quit_on_open = false

vim.cmd("highlight! link NvimTreeFolderIcon Directory")
