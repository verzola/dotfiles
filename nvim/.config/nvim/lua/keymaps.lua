-------------------------------------------------
-------------------- Keymaps --------------------
-------------------------------------------------
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Navigate splits
keymap('n', '<A-j>', '<c-w>j', opts)
keymap('n', '<A-h>', '<c-w>h', opts)
keymap('n', '<A-k>', '<c-w>k', opts)
keymap('n', '<A-l>', '<c-w>l', opts)

-- Fast write and quit
keymap('n', '<leader>w', ':w<CR>', opts)
keymap('n', '<leader>q', ':q!<CR>', opts)
keymap('n', '<leader>x', ':x<CR>', opts)

-- Remap arrows to scroll
keymap('n', '<Up>', '<c-y>', opts)
keymap('n', '<Down>', '<c-e>', opts)
keymap('n', '<Right>', '<c-e>', opts)
keymap('n', '<Left>', '<c-y>', opts)

-- Navigate buffers
keymap('n', '<leader>l', ':BufferLineCycleNext<CR>', opts)
keymap('n', '<leader>k', ':BufferLineCyclePrev<CR>', opts)
keymap('n', '<leader>bq', ':bp <BAR> bd #<CR>', opts)

-- System clipboard
keymap('v', '<leader>y', '"+y', opts)
keymap('v', '<leader>p', '"+p', opts)
keymap('v', '<leader>P', '"+P', opts)
keymap('v', '<leader>d', '"+d', opts)
keymap('n', '<leader>p', '"+p', opts)
keymap('n', '<leader>P', '"+P', opts)

-- Telescope
keymap('n', '<C-p>', ':Telescope find_files hidden=true<cr>', opts)
keymap('n', '<leader>ff', ':Telescope<cr>', opts)


-- Neovim Config
keymap('n', '<leader>sv', ':source $MYVIMRC<cr>', opts)
keymap('n', '<leader>ev', ':vsplit $MYVIMRC<cr>', opts)

-- nvim-tree
keymap('n', '<c-e>', ':NvimTreeFocus<cr>', opts)
keymap('n', '<leader>nf', ':NvimTreeFindFileToggle<cr>', opts)

-- Easy indent
keymap('v', '>', '>gv', opts)
keymap('v', '<', '<gv', opts)

-- Tab go to pair
keymap('n', '<tab>', '%', opts)
keymap('v', '<tab>', '%', opts)

-- Sort
keymap('v', '<leader>s', ":'<,'>sort<CR>", opts)

-- Trouble
keymap('n', '<leader>t', ':TroubleToggle<cr>', opts)

-- Lazy
keymap('n', '<leader>z', ':Lazy<cr>', opts)
