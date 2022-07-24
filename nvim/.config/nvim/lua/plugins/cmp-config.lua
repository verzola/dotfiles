local cmp = require'cmp'

cmp.setup({
  experimental = {
    --ghost_text = true,
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
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lua' },
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require'lspconfig'.ansiblels.setup{
  capabilities = capabilities
}

require'lspconfig'.bashls.setup{
  capabilities = capabilities
}

require'lspconfig'.cssls.setup{
  capabilities = capabilities
}

require'lspconfig'.cssmodules_ls.setup{
  capabilities = capabilities
}

require'lspconfig'.dockerls.setup{
  capabilities = capabilities
}

require'lspconfig'.emmet_ls.setup{
  capabilities = capabilities
}

require'lspconfig'.eslint.setup{
  capabilities = capabilities
}

require'lspconfig'.html.setup{
  capabilities = capabilities
}

require'lspconfig'.intelephense.setup{
  capabilities = capabilities
}

require'lspconfig'.jsonls.setup{
  capabilities = capabilities
}

local sumneko_binary_path = vim.fn.exepath('lua-language-server')
local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ':h:h:h')

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup{
  capabilities = capabilities,
  -- cmd = {sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua"};
  -- settings = {
  --     Lua = {
  --     runtime = {
  --         -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
  --         version = 'LuaJIT',
  --         -- Setup your lua path
  --         path = runtime_path,
  --     },
  --     diagnostics = {
  --         -- Get the language server to recognize the `vim` global
  --         globals = {'vim'},
  --     },
  --     workspace = {
  --         -- Make the server aware of Neovim runtime files
  --         library = vim.api.nvim_get_runtime_file("", true),
  --     },
  --     -- Do not send telemetry data containing a randomized but unique identifier
  --     telemetry = {
  --         enable = false,
  --     },
  --     },
  -- },
}

require'lspconfig'.tailwindcss.setup{
  capabilities = capabilities
}

require'lspconfig'.tsserver.setup{
  capabilities = capabilities
}

require'lspconfig'.yamlls.setup{
  capabilities = capabilities
}

