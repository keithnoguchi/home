-- https://github.com/neovim/nvim-lspconfig?tab=readme-ov-file#configuration
local lsp = require('lspconfig')

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
