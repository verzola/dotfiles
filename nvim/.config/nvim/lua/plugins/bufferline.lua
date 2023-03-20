require('bufferline').setup {
  options = {
    --separator_style = 'slant',
    hover = {
      enabled = true,
      delay = 200,
      reveal = {'close'}
    },
    diagnostics = "nvim_lsp"
  }
}
