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
	{ "mhinz/vim-startify" },
	{ "airblade/vim-rooter" },
	------------------------------------- Tab-like buffers
	{
		"akinsho/bufferline.nvim",
    version = "*",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
		},
		config = function()
			require("plugins.bufferline")
		end,
	},
	------------------------------------- File-explorer
	{
		"nvim-tree/nvim-tree.lua",
		cmd = {
			"NvimTreeFocus",
			"NvimTreeFindFileToggle",
			"NvimTreeToggle",
		},
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
		event = "VeryLazy",
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
		config = function()
			require("plugins.lualine")
		end,
	},
	------------------------------------- Finder
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
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
		cmd = "Mason",
		config = function()
			require("mason").setup({})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
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
	{ "neovim/nvim-lspconfig", lazy = true },
	---------------------------------------------- CMP
	{ "hrsh7th/cmp-buffer", event = "InsertEnter" },
	{ "hrsh7th/cmp-path", event = { "InsertEnter", "CmdlineEnter" } },
	{ "hrsh7th/cmp-cmdline", event = "CmdlineEnter" },
	{ "hrsh7th/cmp-nvim-lua", event = "InsertEnter" },
	{ "hrsh7th/cmp-nvim-lsp", event = "InsertEnter" },
	{ "hrsh7th/cmp-vsnip", event = "InsertEnter" },
	{ "hrsh7th/vim-vsnip", event = "InsertEnter" },
	{ "rafamadriz/friendly-snippets", event = "InsertEnter" },
	{
		"hrsh7th/nvim-cmp",
		event = { "InsertEnter", "CmdlineEnter" },
		config = function()
			require("plugins.cmp")
		end,
	},
	---------------------------------------------- Formatters
	{
		"prettier/vim-prettier",
		build = "yarn install --frozen-lockfile --production",
		event = { "BufReadPre", "BufNewFile" },
		ft = { "javascript", "javascriptreact", "typescript", "typescriptreact", "html", "css", "json" },
		config = function()
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.html", "*.css", "*.json" },
				callback = function(args)
					if vim.bo[args.buf].modifiable then
						vim.cmd("silent Prettier")
					end
				end,
			})
		end,
	},
	{ "editorconfig/editorconfig-vim" },
	{
		"folke/trouble.nvim",
    cmd = "Trouble",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
		},
		config = function()
			require("plugins.trouble")
		end,
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
	},
	---------------------------------------------- Git
	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPre",
		config = function()
			require("plugins.gitsigns")
		end,
	},
	{ "tpope/vim-fugitive" },
	---------------------------------------------- Show spaces
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("plugins.indent-blankline")
		end,
    opts = {},
	},
	---------------------------------------------- Key finder
	{
		"folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
		config = function()
			require("plugins.which-key")
		end,
	},
	---------------------------------------------- Notifications
	{
		"rcarriga/nvim-notify",
		event = "VeryLazy",
		config = function()
			require("plugins.notify")
		end,
	},
	{
		"catgoose/nvim-colorizer.lua",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require("plugins.colorizer")
		end,
	},
	---------------------------------------------- Auto-pairs
	{
		"windwp/nvim-autopairs",
    event = "InsertEnter",
		config = true,
    opts = {}
	},
	---------------------------------------------- Completion
	---------------------------------------------- Terminal
	{
		"akinsho/toggleterm.nvim",
		keys = { "<C-t>" },
		config = function()
			require("plugins.toggleterm")
		end,
	},
	---------------------------------------------- Emmet
	{
		"mattn/emmet-vim",
		event = "InsertEnter",
		ft = { "html", "css", "javascriptreact", "typescriptreact" },
	},
	---------------------------------------------- Barbecue
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		event = "LspAttach",
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
		"github/copilot.vim",
		event = "InsertEnter",
  },
})
