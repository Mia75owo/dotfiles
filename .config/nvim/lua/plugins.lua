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
  use 'tzachar/cmp-tabnine'
  use 'hrsh7th/cmp-emoji'

  -- formatting
  use 'MunifTanjim/prettier.nvim'
  use 'rhysd/vim-clang-format'
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate"
  }
  use 'nvim-treesitter/playground'

  -- Icons
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- basic build system script
  use 'pianocomposer321/yabs.nvim'

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
  --
  use 'editorconfig/editorconfig-vim'
  use 'lukas-reineke/indent-blankline.nvim'

  --Better movement
  use 'justinmk/vim-sneak'

  --Themes
  use '/navarasu/onedark.nvim'
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

  use 'terryma/vim-multiple-cursors' --multiple cursors
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

  use 'jbyuki/instant.nvim'
  use 'petertriho/nvim-scrollbar'
  use 'jbyuki/nabla.nvim'
  use 'AckslD/nvim-neoclip.lua'

  use 'mfussenegger/nvim-dap'
  use 'mattn/emmet-vim'
  use 'reedes/vim-lexical'

	-- images (only supportet in kitty terminal)
	use 'edluffy/hologram.nvim'

	-- TODO: move this to a git repo
	--use '~/.local/share/nvim/site/pack/packer/start/md-img.nvim'
	use '~/.config/nvim/privatePlugins/md-img.nvim'

  if PACKER_BOOTSTRAP then
	  require("packer").sync()
	end
end)
