-------------------------------------------------
-------------------- Plugins --------------------
-------------------------------------------------
-- Initialize lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Define plugins
require("lazy").setup({
  {'tpope/vim-sensible'},
  {'tpope/vim-repeat'},
  {'tpope/vim-surround'},
  {'mhinz/vim-startify'},
  {
    'akinsho/bufferline.nvim',
    dependencies = {
      {'kyazdani42/nvim-web-devicons'}
    },
    config = function()
      require 'plugins.bufferline-config'
    end
  },
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = {
      {'kyazdani42/nvim-web-devicons'}
    },
    config = function()
      require 'plugins.tree-config'
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require 'plugins.lualine-config'
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      {'nvim-lua/plenary.nvim'}
    }
  },
  {
    'catppuccin/nvim',
    config = function()
      require("catppuccin").setup{
        transparent_background = true,
      }

      vim.g.catppuccin_flavour = "mocha"

      vim.cmd([[
        colorscheme catppuccin
      ]])
    end
  },
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require 'plugins.treesitter-config'
    end
  },
  {'mattn/emmet-vim'},
  {'folke/lsp-colors.nvim'},
  {
    'williamboman/mason.nvim',
    config = function()
      require 'plugins.mason'
    end
  },
  {'williamboman/mason-lspconfig.nvim'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {'hrsh7th/cmp-cmdline'},
  {'hrsh7th/cmp-nvim-lua'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-vsnip'},
  {'hrsh7th/vim-vsnip'},
  {'rafamadriz/friendly-snippets'},
  {
    'hrsh7th/nvim-cmp',
    config = function()
      require 'plugins.cmp-config'
    end
  },
  {'prettier/vim-prettier'},
  {'editorconfig/editorconfig-vim'},
  {
    'folke/trouble.nvim',
    dependencies = {
      {'kyazdani42/nvim-web-devicons'}
    },
    config = function()
      require 'plugins.trouble-config'
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require 'plugins.gitsigns-config'
    end
  },
  {'tpope/vim-fugitive'},
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require 'plugins.indent-blankline-config'
    end
  },
  {'tpope/vim-commentary'},
  {'tpope/vim-obsession'},
  {
    'folke/which-key.nvim',
    config = function()
      require 'plugins.which-key-config'
    end
  },
  {
    'rcarriga/nvim-notify',
    config = function()
      require 'plugins.notify-config'
    end
  },
  {'norcalli/nvim-colorizer.lua'},
  {'vim-test/vim-test'},
  {
    'windwp/nvim-autopairs',
    config = function()
      require 'plugins.autopairs-config'
    end
  },
  {
    'gelguy/wilder.nvim',
    config = function()
      require 'plugins.wilder-config'
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require 'plugins.toggleterm-config'
    end
  },
  {'lewis6991/impatient.nvim'},
  {'airblade/vim-rooter'},
})
