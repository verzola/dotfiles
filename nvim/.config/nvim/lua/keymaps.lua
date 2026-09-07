-------------------------------------------------
-------------------- Keymaps --------------------
-------------------------------------------------
local function map(mode, lhs, rhs, desc, opts)
	opts = vim.tbl_extend("force", { silent = true, desc = desc }, opts or {})
	vim.keymap.set(mode, lhs, rhs, opts)
end

-- Navigate splits
map("n", "<A-j>", "<c-w>j", "Go to lower window")
map("n", "<A-h>", "<c-w>h", "Go to left window")
map("n", "<A-k>", "<c-w>k", "Go to upper window")
map("n", "<A-l>", "<c-w>l", "Go to right window")

-- Fast write and quit
map("n", "<leader>w", ":w<CR>", "Save file")
map("n", "<leader>q", ":q!<CR>", "Quit without saving")
map("n", "<leader>x", ":x<CR>", "Save and quit")
map("n", "<leader>wq", ":x<CR>", "Save and quit")

-- Remap arrows to scroll
map("n", "<Up>", "<c-y>", "Scroll window up")
map("n", "<Down>", "<c-e>", "Scroll window down")
map("n", "<Right>", "<c-e>", "Scroll window down")
map("n", "<Left>", "<c-y>", "Scroll window up")

-- Navigate buffers
map("n", "<leader>l", ":BufferLineCycleNext<CR>", "Next buffer tab")
map("n", "<leader>k", ":BufferLineCyclePrev<CR>", "Previous buffer tab")
map("n", "<leader>bq", ":bp <BAR> bd #<CR>", "Close current buffer")

-- System clipboard
map("v", "<leader>y", '"+y', "Yank to clipboard")
map("v", "<leader>p", '"+p', "Paste from clipboard")
map("v", "<leader>P", '"+P', "Paste before from clipboard")
map("v", "<leader>d", '"+d', "Delete to clipboard")
map("n", "<leader>p", '"+p', "Paste from clipboard")
map("n", "<leader>P", '"+P', "Paste before from clipboard")

-- Telescope
map("n", "<C-p>", ":Telescope find_files hidden=true<cr>", "Find files (including hidden)")
map("n", "<leader>ff", ":Telescope<cr>", "Telescope builtins")
map("n", "<leader>fg", ":Telescope live_grep<cr>", "Live grep across project")

-- Neovim Config
map("n", "<leader>sv", ":source $MYVIMRC<cr>", "Source Neovim config")
map("n", "<leader>ev", ":vsplit $MYVIMRC<cr>", "Edit Neovim config")

-- nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<cr>", "Toggle file tree")
map("n", "<c-e>", ":NvimTreeFocus<cr>", "Focus file tree")
map("n", "<leader>nf", ":NvimTreeFindFileToggle<cr>", "Find current file in tree")

-- Easy indent
map("v", ">", ">gv", "Indent line and retain selection")
map("v", "<", "<gv", "Unindent line and retain selection")

-- Tab go to pair
map("n", "<tab>", "%", "Jump to matching pair")
map("v", "<tab>", "%", "Jump to matching pair")

-- Sort
map("v", "<leader>s", ":'<,'>sort<CR>", "Sort selected lines")

-- Trouble
map("n", "<leader>t", "<cmd>Trouble diagnostics toggle<cr>", "Toggle diagnostics (Trouble)")

-- Lazy
map("n", "<leader>z", ":Lazy<cr>", "Open Lazy plugin manager")

-- Mason
map("n", "<leader>m", ":Mason<cr>", "Open Mason package manager")

-- Format (LSP format with fallback to Prettier)
map("n", "<leader>fmt", function()
	local bufnr = vim.api.nvim_get_current_buf()
	local clients = vim.lsp.get_clients({ bufnr = bufnr })
	local has_lsp_format = false
	for _, client in ipairs(clients) do
		if client.supports_method("textDocument/formatting") then
			has_lsp_format = true
			break
		end
	end

	if has_lsp_format then
		vim.lsp.buf.format({ async = true })
	elseif vim.fn.exists(":Prettier") == 2 then
		vim.cmd("Prettier")
	else
		vim.lsp.buf.format({ async = true })
	end
end, "Format file (LSP / Prettier)")

-- Copilot
map("n", "<leader>co", ":Copilot<cr>", "Open Copilot panel")
