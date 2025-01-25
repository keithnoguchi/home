-- https://github.com/nvim-telescope/telescope.nvim?tab=readme-ov-file
require('telescope').setup{
	defaults = {
		layout_config = {
			anchor = 'E',         -- Show the telescope to the East
			width = 0.5,          -- Overall width of Telescope window
			preview_cutoff = 0,   -- Always show the preview
			preview_width = 0.5,  -- Width of the preview window
			preview_height = 0.5, -- Height of the preview window
		},
	},
	pickers = {
		buffers = {
			theme = "dropdown",
			layout_config = {
			},
		},
		find_files = {
			theme = "dropdown",
			layout_config = {
				anchor = 'E',
			},
		},
		live_grep = {
			theme = "dropdown",
			layout_config = {
				anchor = 'E',
			},
		},
		help_tags = {
			theme = "dropdown",
			layout_config = {
				anchor = 'E',
			},
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
