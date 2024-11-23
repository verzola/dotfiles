vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup({
	view = {
		--width = 40,
		-- float = {
		--   enable = true,
		--   quit_on_focus_loss = true,
		--   open_win_config = {
		--     relative = "editor",
		--     border = "rounded",
		--     width = 40,
		--     height = 100,
		--     row = 1,
		--     col = 1,
		--   },
		-- },
	},
})
