-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

-- Plugins
return packer.startup(function()
  -- Packer itself
  use 'wbthomason/packer.nvim'

  -- Better defaults
  use 'tpope/vim-sensible'
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'

  -- Start screen
  use 'mhinz/vim-startify'
  --use 'glepnir/dashboard-nvim'

  -- Tabs
  use {
    'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function()
        require 'plugins.bufferline-config'
      end
  }

  -- File tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require 'plugins.tree-config'
    end
  }

  -- Line
  use { 'nvim-lualine/lualine.nvim',
    config = function()
      require 'plugins.lualine-config'
    end
  }

  -- File finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorschemes
  use 'catppuccin/nvim'
  --use 'dracula/vim'
  --use 'folke/tokyonight.nvim'
  --use 'marko-cerovac/material.nvim'
  --use 'EdenEast/nightfox.nvim'
  --use 'rebelot/kanagawa.nvim'
  --use 'rafi/awesome-vim-colorschemes'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'junegunn/vim-emoji'

  -- Languages/syntax
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require 'plugins.treesitter-config'
    end
  }
  use 'mattn/emmet-vim'
  use {
    'williamboman/nvim-lsp-installer',
    config = function()
      require 'plugins.lsp-installer-config'
    end
  }
  use 'neovim/nvim-lspconfig'
  use 'folke/lsp-colors.nvim'

  -- Autocomplete
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use "rafamadriz/friendly-snippets"
  use {
    'hrsh7th/nvim-cmp', config = function()
      require 'plugins.cmp-config'
    end
  }

  -- Formatter & Linter
  use 'dense-analysis/ale'
  use 'prettier/vim-prettier'
  use 'editorconfig/editorconfig-vim'
  use {
    'folke/trouble.nvim',
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require 'plugins.trouble-config'
    end
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require 'plugins.gitsigns-config'
    end
  }
  use 'tpope/vim-fugitive'

  -- Indentation
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require 'plugins.indent-blankline-config'
    end
  }

  -- Comments
  use 'tpope/vim-commentary'

  -- Session
  use 'tpope/vim-obsession'

  -- Possible commands
  use {
    'folke/which-key.nvim',
    config = function()
      require 'plugins.which-key-config'
    end
  }

  -- Notification
  use {
    'rcarriga/nvim-notify',
    config = function()
      require 'plugins.notify-config'
    end
  }

  -- Show color on colors
  use 'norcalli/nvim-colorizer.lua'

  -- Tests
  use 'vim-test/vim-test'

  -- Autopairs
  use {
    "windwp/nvim-autopairs",
    config = function()
      require 'plugins.autopairs-config'
    end
  }

  use {
    'gelguy/wilder.nvim',
    config = function()
      require 'plugins.wilder-config'
    end,
  }

  -- Terminal
  use {
    "akinsho/toggleterm.nvim",
    tag = 'v2.*',
    config = function()
      require 'plugins.toggleterm-config'
    end
  }
  --use 'voldikss/vim-floaterm'

  -- Speed up nvim
  use 'lewis6991/impatient.nvim'

  -- Rooter
  use 'airblade/vim-rooter'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

