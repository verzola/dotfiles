require('bufferline').setup {
  options = {
    diagnostics = "nvim_lsp",
    numbers = "buffer_id",
    indicator = {
      icon = '',
      style = 'underline',
    }
  }
}
