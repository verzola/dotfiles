require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"bashls",
		"cssls",
		"cssmodules_ls",
		"eslint",
		"emmet_ls",
		"html",
		"jsonls",
		"tsserver",
		"intelephense",
		"tailwindcss",
		"yamlls",
		"dockerls",
		"docker_compose_language_service",
		"sqlls",
		"lemminx",
		"yamlls",
	},
	automatic_installation = true,
})
require("mason-lspconfig").setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({})
	end,
})
