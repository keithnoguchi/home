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
		{ name = 'nvim_lsp', group_index = 2 },
		-- https://github.com/zbirenbaum/copilot-cmp?tab=readme-ov-file#nvim-cmp
		--
		-- https://github.com/features/copilot/plans?cft=copilot_li.features_copilot
		-- 2,000 code completion/month for the free account.  Based on
		-- ChatGPT, those two limitations are diagnal and won't affect
		-- the other.
		--
		-- In any case, I've signup the github pro to explore the copilot
		-- code completion feature for a month.  I'll cancel it if the free
		-- LSP is good enough.
		{ name = 'copilot', group_index = 3 },
	}),
}
