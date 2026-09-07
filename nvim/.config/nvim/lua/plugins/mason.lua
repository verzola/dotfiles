require("mason").setup({})

vim.lsp.config("*", {
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"ts_ls",
		"eslint",
		"html",
		"cssls",
		"jsonls",
		"yamlls",
		"emmet_ls",
		"tailwindcss",
		"bashls",
		"dockerls",
		"docker_compose_language_service",
	},
	automatic_enable = true,
})

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	severity_sort = true,
	float = {
		border = "rounded",
		source = "if_many",
	},
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local opts = { buffer = event.buf, silent = true }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, opts)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
	end,
})
