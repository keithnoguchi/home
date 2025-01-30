-- https://github.com/hrsh7th/nvim-cmp
local cmp = require('cmp')
cmp.setup{
	mapping = cmp.mapping.preset.insert({
		['<c-space>'] = cmp.mapping.complete(),
		['<tab>'] = cmp.mapping.confirm({ select = true }),
		['<c-b>'] = cmp.mapping.scroll_docs(-15),
		['<c-f>'] = cmp.mapping.scroll_docs(15),
	}),
	sorting = {
		priority_weight = 2,
		comparators = {
			function(e1, e2)
				local kind1 = e1.source.name
				local kind2 = e2.source.name
				if kind1 == 'nvim_lsp' and kind2 == 'copilot' then
					return true
				elseif kind1 == 'copilot' and kind2 == 'nvim_lsp' then
					return false
				end
				return nil
			end,
		},
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp', group_index = 1 },
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
		{ name = 'copilot', group_index = 2 },
	}),
}

-- Disable copilot suggestions in the Rust source code.
cmp.setup.filetype('rust', {
	sources = cmp.config.sources({
		{ name = 'nvim_lsp', group_index = 1},
	}),
})
