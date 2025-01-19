-- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file
require('telescope').setup{
	pickers = {
		buffers = {
			theme = "dropdown",
		},
		find_files = {
			theme = "dropdown",
		},
		live_grep = {
			theme = "dropdown",
		},
		help_tags = {
			theme = "dropdown",
		},
	},
	extentions = {
		"fzf",
	},
}

-- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file#neovim-lsp-pickers
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'gd', builtin.lsp_definitions, { noremap = true, silent = true })
vim.keymap.set('n', 'gi', builtin.lsp_implementations, { noremap = true, silent = true })
vim.keymap.set('n', 'gr', builtin.lsp_references, { noremap = true, silent = true })
vim.keymap.set('n', 'gs', builtin.lsp_document_symbols, { noremap = true, silent = true })
vim.keymap.set('n', 'gw', builtin.lsp_workspace_symbols, { noremap = true, silent = true })
