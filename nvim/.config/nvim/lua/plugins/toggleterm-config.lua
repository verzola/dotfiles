require('toggleterm').setup {
  open_mapping = [[<c-t>]],
  direction = 'float', -- vertical | horizontal | tab | float
  float_opts = {
    border = 'curved', -- single | double | shadow | curved
    width = 100,
    height = 30,
    winblend = 1,
  },
}
