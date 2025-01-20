-- https://github.com/CopilotC-Nvim/CopilotChat.nvim?tab=readme-ov-file#configuration
local cc = require('CopilotChat')
cc.setup({
	window = {
		layout = 'vertical',
		width = 0.3,
	},
	allow_insecure = false,
	mappings = {
		close = {
			normal = 'q',
			insert = '<c-q>',
		},
		reset = {
			normal = '<c-c>',
			insert = '<c-c>',
		},
		submit_prompt = {
			normal = '<cr>',
			insert = '<c-j>',
		},
	},
})
