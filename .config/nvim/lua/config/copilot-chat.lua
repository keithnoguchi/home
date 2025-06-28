-- https://github.com/CopilotC-Nvim/CopilotChat.nvim?tab=readme-ov-file#configuration
local cc = require('CopilotChat')
cc.setup({
	window = {
		layout = 'vertical',
		width = 0.35,
	},
	allow_insecure = false,
	accept_diff = true,
	question_header = ' me ',
	answer_header = ' Mr. Wizard ',
	model = 'gpt-4o-mini',
	mappings = {
		close = {
			normal = 'd',
			insert = '<c-d>',
		},
		reset = {
			normal = '<l>',
			insert = '<c-l>',
		},
		submit_prompt = {
			normal = '<cr>',
			insert = '<c-j>',
		},
		accept_diff = {
			normal = '<c-a>',
			insert = '<c-a>',
		},
	},
})
