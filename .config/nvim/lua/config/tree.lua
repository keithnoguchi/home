-- https://medium.com/@shaikzahid0713/file-explorer-for-neovim-c324d2c53657
require('nvim-tree').setup{
	sort = {
		sorter = 'case_sensitive',
	},
	view = {
		width = 25,
	},
	renderer = {
		icons = {
			glyphs = {
				default = '>',
				symlink = '->',
				folder = {
					arrow_open = 'v',
					arrow_closed = '>',
					default = '+',
					open = '-',
					empty = '+',      -- empty folder
					empty_open = '-', -- empty folder, open
					symlink = '->',
					symlink_open = '->',
				},
				git = {
					unstaged = '!',
					staged = '+',
					unmerged = '-',
					renamed = '>',
					untracked = '?',
					deleted = 'x',
					ignored = 'o',
				},
			},
			show = {
				file = false,
				folder = true,
				folder_arrow = true,
				git = true,
			},
		},
	},
}
