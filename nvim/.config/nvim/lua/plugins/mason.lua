local M = {}

function M.setup(opts)
	require("mason").setup({})

	vim.lsp.config("*", {
		capabilities = require("cmp_nvim_lsp").default_capabilities(),
	})

	require("mason-lspconfig").setup(opts or {})

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
			local b_opts = { buffer = event.buf, silent = true }
			local function map(mode, lhs, rhs, desc)
				vim.keymap.set(mode, lhs, rhs, vim.tbl_extend("force", b_opts, { desc = desc }))
			end

			map("n", "gd", vim.lsp.buf.definition, "Go to definition")
			map("n", "gr", vim.lsp.buf.references, "LSP references")
			map("n", "<leader>dd", vim.diagnostic.open_float, "Line diagnostics")
			map("n", "[d", vim.diagnostic.goto_prev, "Previous diagnostic")
			map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
			map("n", "K", vim.lsp.buf.hover, "Hover documentation")
			map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
			map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
		end,
	})
end

return M
