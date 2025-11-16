-- https://github.com/neovim/nvim-lspconfig?tab=readme-ov-file#configuration
local lsp = require('lspconfig')

-- C/C++
lsp.clangd.setup{
	cmd = {
		'clangd',
		'--background-index',
		'--background-index-priority=background',
		'--clang-tidy',
		'--completion-style=detailed',
		'--header-insertion=never',
		'-j=1',
		'--limit-results=10',
		'--limit-references=10',
		'--all-scopes-completion=false',
		'--log=error',
		'--malloc-trim',
		'--pch-storage=memory',
	},
	filetypes = { 'c', 'cpp' },
	root_dir = lsp.util.root_pattern('compile_commands.json', 'compile_flags.txt', '.git'),
}

-- Rust
lsp.rust_analyzer.setup{
	settings = {
		['rust-analyzer'] = {
			cargo = { allFeatures = true },
			checkOnSave = true,
			inlayHints = {
				enable = false,
				chainingHints = true,
			},
		},
	},
}

-- Dart/Flutter
lsp.dartls.setup{}

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

-- JS/TS
lsp.ts_ls.setup {
	on_attach = function(client, bufnr)
		local opts = { noremap=true, silent=true, buffer=bufnr }
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
		vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
	end,
	capabilities = require('cmp_nvim_lsp').default_capabilities(),
}
