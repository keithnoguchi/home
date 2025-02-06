-- https://github.com/neovim/nvim-lspconfig?tab=readme-ov-file#configuration
local lsp = require('lspconfig')

-- C/C++
lsp.clangd.setup{
	cmd = {
		'clangd',
		'--background-index',
		'--clang-tidy',
		'--completion-style=detailed',
		'--header-insertion=never',
	},
	filetypes = { 'c', 'cpp' },
	root_dir = lsp.util.root_pattern('compile_commands.json', 'compile_flags.txt', '.git'),
}

-- Rust
lsp.rust_analyzer.setup{
	settings = {
		['rust-analyzer'] = {
			cargo = { allFeatures = true },
			checkOnSave = {
				command = 'clippy',
			},
			inlayHints = {
				enable = false,
				chainingHints = true,
			},
		},
	},
}

-- Golang
lsp.gopls.setup{
	cmd = {'gopls'},
	filetypes = {'go', 'gomod'},
	root_dir = require('lspconfig').util.root_pattern('go.work', 'go.mod', '.git'),
	capabilities = require('cmp_nvim_lsp').default_capabilities(),
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
}
