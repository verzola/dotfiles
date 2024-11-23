local cmp = require("cmp")
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local select_opts = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
	experimental = {
		ghost_text = true,
	},
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<Up>"] = cmp.mapping.select_prev_item(select_opts),
		["<Down>"] = cmp.mapping.select_next_item(select_opts),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = "path" },
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "nvim_lua" },
		{ name = "vsnip" },
	}),
	formatting = {
		fields = { "menu", "abbr", "kind" },
		format = function(entry, item)
			local menu_icon = {
				nvim_lsp = "λ",
				luasnip = "⋗",
				buffer = "Ω",
				path = "🖫",
			}

			item.menu = menu_icon[entry.source.name]
			return item
		end,
	},
})

-- Set configuration for specific filetype.
cmp.setup.filetype("gitcommit", {
	sources = cmp.config.sources({
		{ name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
	}, {
		{ name = "buffer" },
	}),
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline("/", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})

-- Setup lspconfig.
--local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Less used
-- require'lspconfig'.ansiblels.setup{
--   capabilities = capabilities
-- }
--
-- require'lspconfig'.dockerls.setup{
--   capabilities = capabilities
-- }

-- require("lspconfig").bashls.setup({
-- 	capabilities = capabilities,
-- })

-- require("lspconfig").cssls.setup({
-- 	capabilities = capabilities,
-- })

-- require("lspconfig").cssmodules_ls.setup({
-- 	capabilities = capabilities,
-- })

-- require("lspconfig").emmet_ls.setup({
-- 	capabilities = capabilities,
-- })

-- require("lspconfig").eslint.setup({
-- 	capabilities = capabilities,
-- })

-- require("lspconfig").html.setup({
-- 	capabilities = capabilities,
-- })

-- require("lspconfig").intelephense.setup({
-- 	capabilities = capabilities,
-- })

-- require("lspconfig").jsonls.setup({
-- 	capabilities = capabilities,
-- })

-- require("lspconfig").tailwindcss.setup({
-- 	capabilities = capabilities,
-- })

-- require("lspconfig").tsserver.setup({
-- 	capabilities = capabilities,
-- })

-- require("lspconfig").yamlls.setup({
-- 	capabilities = capabilities,
-- })

-- If you want insert `(` after select function or method item
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
