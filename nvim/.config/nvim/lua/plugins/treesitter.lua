require("nvim-treesitter.configs").setup({
	highlight = { enable = true },
	incremental_selection = { enable = true },
	indent = { enable = true },
	rainbow = { enable = true },
	autotag = { enable = true },
	auto_install = true,
	ensure_installed = {
		"bash",
		"css",
		"scss",
		"html",
		"xml",
		"javascript",
		"jsdoc",
		"json",
		"lua",
		"php",
		"phpdoc",
		"sql",
		"yaml",
		"git_config",
		"git_rebase",
		"gitattributes",
		"gitcommit",
		"gitignore",
		"ssh_config",
		--'luadoc',
		--'dockerfile',
	},
})
