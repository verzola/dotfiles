require('nvim-lsp-installer').setup{
  ensure_installed = {
     'ansiblels',
     'bashls',
     'cssls',
     'cssmodules_ls',
     'dockerls',
     'emmet_ls',
     'eslint',
     'html',
     'intelephense',
     'jsonls',
     'quick_lint_js',
     'sumneko_lua',
     'tailwindcss',
     'tsserver',
     'yamlls',
  },
  automatic_installation = true,
}