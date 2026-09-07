require("nvim-treesitter").setup({
	install_dir = vim.fn.stdpath("data") .. "/site",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"bash",
		"css",
		"html",
		"javascript",
		"javascriptreact",
		"json",
		"lua",
		"markdown",
		"typescript",
		"typescriptreact",
		"vim",
		"yaml",
	},
	callback = function()
		pcall(vim.treesitter.start)
	end,
})
