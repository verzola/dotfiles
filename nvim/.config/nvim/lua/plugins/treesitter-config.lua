require'nvim-treesitter.configs'.setup {
  highlight = { enable = true },
  incremental_selection = { enable = true },
  indent = { enable = true },
  rainbow = { enable = true },
  ensure_installed = {
    'bash',
    'html',
    'css',
    'javascript',
    'json',
    'php',
    'lua',
    'yaml',
    'dockerfile'
  }
}
