require("nvim-treesitter").setup({
	install_dir = vim.fn.stdpath("data") .. "/site",
})

vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		pcall(vim.treesitter.start)
	end,
})
