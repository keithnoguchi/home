-- https://github.com/neovim/nvim-lspconfig?tab=readme-ov-file#configuration
require('lspconfig').gopls.setup{
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
