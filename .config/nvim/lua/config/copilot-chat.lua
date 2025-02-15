-- https://github.com/CopilotC-Nvim/CopilotChat.nvim?tab=readme-ov-file#configuration
local cc = require('CopilotChat')
cc.setup({
	window = {
		layout = 'vertical',
		width = 0.35,
	},
	allow_insecure = false,
	accept_diff = true,
	question_header = ' keith ',
	answer_header = ' tank ',
	mappings = {
		close = {
			normal = 'q',
			insert = '<c-q>',
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
			normal = '<c-d>',
			insert = '<c-d>',
		},
	},
})
