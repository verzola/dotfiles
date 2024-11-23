require("mason").setup({})

require("mason-lspconfig").setup({
	ensure_installed = {
		-- "bashls",
		-- "docker_compose_language_service",
		-- "dockerls",
		-- "emmet_ls",
		-- "eslint",
		-- "jsonls",
		-- "lua_ls",
		-- "ts_ls",
		-- "yamlls",
		-- "cssls",
		-- "cssmodules_ls",
		-- "html",
		-- "intelephense",
		-- "lemminx",
		-- "sqlls",
		-- "tailwindcss",
	},
	automatic_installation = true,
})

require("mason-lspconfig").setup_handlers({
	function(server_name)
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("lspconfig")[server_name].setup({
      capabilities = capabilities,
    })
	end,
})
