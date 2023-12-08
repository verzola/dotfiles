require('nvim-treesitter.configs').setup {
  highlight = { enable = true },
  incremental_selection = { enable = true },
  indent = { enable = true },
  rainbow = { enable = true },
  autotag = { enable = true },
  auto_install = true,
  ensure_installed = {
    'bash',
    'css',
    'html',
    'javascript',
    'json',
    'lua',
    'php',
    'scss',
    'yaml',
    --'luadoc',
    --'dockerfile',
  }
}
