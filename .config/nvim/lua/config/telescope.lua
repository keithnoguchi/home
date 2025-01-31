-- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file
local actions = require('telescope.actions')
require('telescope').setup{
	defaults = {
		layout_config = {
			anchor = 'east',
		},
		mappings = {
			i = {
				['<c-n>'] = actions.preview_scrolling_down,
				['<c-p>'] = actions.preview_scrolling_up,
				['<c-f>'] = actions.preview_scrolling_down,
				['<c-b>'] = actions.preview_scrolling_up,
				['<c-j>'] = actions.move_selection_next,
				['<c-k>'] = actions.move_selection_previous,
				['<c-d>'] = actions.delete_buffer,
			},
		},
	},
	pickers = {
		buffers = {
			theme = 'dropdown',
		},
		find_files = {
			theme = 'dropdown',
		},
		live_grep = {
			theme = 'dropdown',
		},
		help_tags = {
			theme = 'dropdown',
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
