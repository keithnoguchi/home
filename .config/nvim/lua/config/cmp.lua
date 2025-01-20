-- https://github.com/hrsh7th/nvim-cmp
local cmp = require('cmp')
cmp.setup{
	mapping = cmp.mapping.preset.insert({
		['<c-space>'] = cmp.mapping.complete(),
		['<tab>'] = cmp.mapping.confirm({ select = true }),
		['<c-b>'] = cmp.mapping.scroll_docs(-4),
		['<c-f>'] = cmp.mapping.scroll_docs(4),
	}),
	sources = cmp.config.sources({
		-- https://github.com/zbirenbaum/copilot-cmp?tab=readme-ov-file#nvim-cmp
		--
		-- https://github.com/features/copilot/plans?cft=copilot_li.features_copilot
		-- 2,000 code completion/month for the free account.  No way!?  Disabling it
		-- altogether, or it's just stop working, then, I might leave it there.
		-- { name = 'copilot', group_index = 2 },
		{ name = 'nvim_lsp', group_index = 2 },
	}),
}
