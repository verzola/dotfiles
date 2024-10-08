-------------------------------------------------
-------------------- Plugins --------------------
-------------------------------------------------
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Define plugins
require("lazy").setup({
  checker = { enabled = true },
	------------------------------------- Essentials
	{ "tpope/vim-sensible" },
	{ "tpope/vim-repeat" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-commentary" },
	{ "tpope/vim-obsession" },
	{ "mhinz/vim-startify" },
	{ "lewis6991/impatient.nvim" },
	{ "airblade/vim-rooter" },
	------------------------------------- Tab-like buffers
	{
		"akinsho/bufferline.nvim",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
		},
		config = function()
			require("plugins.bufferline")
		end,
	},
	------------------------------------- File-explorer
	{
		"kyazdani42/nvim-tree.lua",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
		},
		config = function()
			require("plugins.tree")
		end,
	},
	------------------------------------- Statusline
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("plugins.lualine")
		end,
	},
	------------------------------------- Finder
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
		},
	},
	------------------------------------- Themes
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = true,
			})
			vim.cmd([[
        colorscheme tokyonight-night
      ]])
		end,
	},
	---------------------------------------------- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("plugins.treesitter")
		end,
		build = ":TSUpdate",
	},
	----------------------------------------------  LSP
	{
		"williamboman/mason.nvim",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("plugins.mason")
		end,
	},
	-- {
	-- 	"nvimdev/lspsaga.nvim",
	-- 	config = function()
	-- 		require("lspsaga").setup({})
	-- 	end,
	-- },
	{ "neovim/nvim-lspconfig" },
	---------------------------------------------- CMP
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/cmp-nvim-lua" },
	{ "hrsh7th/cmp-nvim-lsp" },
	--{ "hrsh7th/cmp-vsnip" },
	--{ "hrsh7th/vim-vsnip" },
	{ "rafamadriz/friendly-snippets" },
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require("plugins.cmp")
		end,
	},
	---------------------------------------------- Formatters
	{ "prettier/vim-prettier" },
	{ "editorconfig/editorconfig-vim" },
	{
		"mhartington/formatter.nvim",
		config = function()
			require("plugins.formatter")
		end,
	},
	{
		"folke/trouble.nvim",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
		},
		config = function()
			require("plugins.trouble")
		end,
	},
	---------------------------------------------- Git
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("plugins.gitsigns")
		end,
	},
	{ "tpope/vim-fugitive" },
	---------------------------------------------- Show spaces
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("plugins.indent-blankline")
		end,
	},
	---------------------------------------------- Key finder
	{
		"folke/which-key.nvim",
		config = function()
			require("plugins.which-key")
		end,
	},
	---------------------------------------------- Notifications
	{
		"rcarriga/nvim-notify",
		config = function()
			require("plugins.notify")
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("plugins.colorizer")
		end,
	},
	---------------------------------------------- Auto-pairs
	{
		"windwp/nvim-autopairs",
		config = function()
			require("plugins.autopairs")
		end,
	},
	{
		"windwp/nvim-ts-autotag",
	},
	---------------------------------------------- Completion
	{
		"gelguy/wilder.nvim",
		config = function()
			require("plugins.wilder")
		end,
	},
	---------------------------------------------- Terminal
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("plugins.toggleterm")
		end,
	},
	---------------------------------------------- Emmet
	{ "mattn/emmet-vim" },
	---------------------------------------------- Twig
	{ "nelsyeung/twig.vim" },
	---------------------------------------------- Fzf
	{ "junegunn/fzf", dir = "~/.fzf", build = "./install --all" },
	{ "junegunn/fzf.vim" },
	---------------------------------------------- Barbecue
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		config = function()
			require("plugins.barbecue")
		end,
		opts = {
			-- configurations go here
		},
	},
	---------------------------------------------- AI
  {
    "github/copilot.vim"
  },
	---------------------------------------------- Codeium
  -- {
  --   'Exafunction/codeium.vim',
  --   event = 'BufEnter'
  -- }
})
