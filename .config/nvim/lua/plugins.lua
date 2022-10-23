--  _____         _     _  ______ _____ __   _ _______
-- |_____] |      |     | |  ____   |   | \  | |______
-- |       |_____ |_____| |_____| __|__ |  \_| ______|

local packer = require('loadPacker')

return packer.startup(function(use)
  use 'lewis6991/impatient.nvim'

  -- update packer
  use "wbthomason/packer.nvim"

  -- global dependencies
  use 'nvim-lua/plenary.nvim'
  use "nvim-lua/popup.nvim"

  -- LSP, autocompletion and formatting
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- base LSP features
  use 'tami5/lspsaga.nvim'
  use 'ray-x/lsp_signature.nvim'
  use 'weilbith/nvim-code-action-menu'
  use 'onsails/lspkind-nvim'
  use 'j-hui/fidget.nvim'

  -- autocompletion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-emoji'
  use {
    'tzachar/cmp-tabnine',
    run = "./install.sh"
  }

  -- formatting
  use 'MunifTanjim/prettier.nvim'
  use 'rhysd/vim-clang-format'
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate"
  }
  use {
    'nvim-treesitter/playground',
    cmd = { "TSCaptureUnderCursor", "TSPlaygroundToggle", "TSNodeUnderCursor", "TSHighlightCapturesUnderCursor" },
  }

  -- Icons
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- basic build system script
  use {
    'pianocomposer321/yabs.nvim',
    cmd = { "YabsDefaultTask", "YabsTask" },
    config = function()
      require('cfg.yabs')
    end,
    module = "yabs",
  }

  -- Better top bar
  use 'akinsho/bufferline.nvim'

  --comments
  use 'preservim/nerdcommenter'
  use 'folke/todo-comments.nvim'


  -- status bar
  use 'windwp/windline.nvim'

  -- git
  use 'tanvirtin/vgit.nvim'

  --Auto pairs
  use 'windwp/nvim-autopairs'
  use 'machakann/vim-sandwich'

  use 'editorconfig/editorconfig-vim'
  --use 'lukas-reineke/indent-blankline.nvim'

  --Better movement
  use 'justinmk/vim-sneak'

  --Themes
  use 'navarasu/onedark.nvim'
  use 'folke/tokyonight.nvim'
  use 'arcticicestudio/nord-vim'
  use 'rakr/vim-one'
  use {
    'dracula/vim',
    as = 'dracula'
  }
  use 'Mofiqul/vscode.nvim'

  -- File tree
  use 'kyazdani42/nvim-tree.lua'
  --use {
  --'ms-jpq/chadtree',
  --run = "python3 -m chadtree deps"
  --}

  -- notify
  use 'rcarriga/nvim-notify'

  -- Start screen
  use 'mhinz/vim-startify'

  --Floaterm
  use 'voldikss/vim-floaterm'

  -- everything else

  --use 'terryma/vim-multiple-cursors' --multiple cursors
  use 'tpope/vim-eunuch' --extra comments
  use '907th/vim-auto-save' --auto save
  use 'powerman/vim-plugin-AnsiEsc'
  use 'andweeb/presence.nvim'
  --use 'pseewald/vim-anfold' -- fold

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'nvim-telescope/telescope-symbols.nvim'

  use 'fidian/hexmode' -- hex

  -- preview markdown in realtime
  use {
    'iamcco/markdown-preview.nvim',
    run = "cd app && yarn install"
  }

  -- TODO: make use of this
  use 'junegunn/vim-easy-align'

  use 'jbyuki/instant.nvim'
  use 'petertriho/nvim-scrollbar'
  use {
    'jbyuki/nabla.nvim',
    ft = "markdown",
  }
  use 'AckslD/nvim-neoclip.lua'

  -- TODO: make use of this
  use 'mfussenegger/nvim-dap'
  use {
    'mattn/emmet-vim',
    ft = { "html", "javascriptreact", "typescriptreact" }
  }
  use 'reedes/vim-lexical'

  -- images (only supportet in kitty terminal)
  use {
    'edluffy/hologram.nvim',
    ft = "markdown",
  }

  -- rust
  use {
    'simrat39/rust-tools.nvim',
    ft = "rust",
  }

  -- smooth scrolling
  use 'karb94/neoscroll.nvim'

  -- tagbar (whowing the file structure)
  use {
    'preservim/tagbar',
    cmd = { "Tagbar*" },
  }

  use 'alaviss/nim.nvim'
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
