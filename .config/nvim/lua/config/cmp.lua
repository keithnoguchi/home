-- https://github.com/hrsh7th/nvim-cmp
local cmp = require('cmp')
cmp.setup{
	mapping = cmp.mapping.preset.insert({
		['<c-space>'] = cmp.mapping.complete(),
		['<cr>'] = cmp.mapping.confirm({ select = true }),
		['<c-b>'] = cmp.mapping.scroll_docs(-4),
		['<c-f>'] = cmp.mapping.scroll_docs(4),
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
	}),
}
