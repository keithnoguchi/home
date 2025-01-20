-- https://github.com/folke/which-key.nvim
local wk = require("which-key")
wk.add({
	-- Copilot chat
	--
	-- https://github.com/CopilotC-Nvim/CopilotChat.nvim?tab=readme-ov-file#tips
	{ '<leader>cc', group = 'Copilot chat' },
	{ '<leader>ccd', '<cmd>CopilotChatDocs<cr>', desc = 'Document' },
	{ '<leader>cce', '<cmd>CopilotChatExplain<cr>', desc = 'Explain' },
	{ '<leader>ccf', '<cmd>CopilotChatFix<cr>', desc = 'Fix' },
	{ '<leader>ccm', '<cmd>CopilotChatModels<cr>', desc = 'Models' },
	{ '<leader>cco', '<cmd>CopilotChatOptimize<cr>', desc = 'Optimize' },
	{ '<leader>ccp',
		function()
			local actions = require('CopilotChat.actions')
			require('CopilotChat.integrations.telescope').pick(
				actions.prompt_actions()
			)
		end,
		desc = 'Prompt',
	},
	{ '<leader>ccq',
		function()
			local input = vim.fn.input('Quick chat: ')
			if input ~= '' then
				require('CopilotChat').ask(input, {
					selection  = require('CopilotChat.select').line
				})
			end
		end,
		desc = 'Chat',
	},
	{ '<leader>ccr', '<cmd>CopilotChatReview<cr>', desc = 'Review' },
	{ '<leader>ccs', '<cmd>CopilotChatSave<cr>', desc = 'Save' },
	{ '<leader>cct', '<cmd>CopilotChatTest<cr>', desc = 'Test' },
	{ '<leader>ccv', '<cmd>CopilotChatToggle<cr>', desc = 'Toggle' },

	-- File operations
	{ "<leader>f", group = "File" },
	{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
	{ "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Color scheme" },
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
	{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
	{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
	{ "<leader>l", "<cmd>LspInfo<cr>", desc = "LSP info" },

	-- Search operations
	{ "<leader>s", group = "search" },
	{ "<leader>sc", "<cmd>Telescope commands<cr>", desc = "Commands" },
	{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Find help" },
	{ "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
	{ "<leader>sm", "<cmd>Telescope man_pages<cr>", desc = "Man pages" },
	{ "<leader>sr", "<cmd>Telescope registers<cr>", desc = "Registers" },

	-- Execution operations
	{ '<leader>x', group = 'Execution' },
	{ '<leader>xg', group = 'Golang' },
	{ '<leader>xgr',
		function()
			local input = vim.fn.input('File to run: ')
			if input ~= '' then
				vim.cmd('!go run ' .. input)
			end
		end,
		desc = 'Run',
	},

	-- Normal and view mode.
	{
		-- Nested mappings are allowed and can be added in any order
		-- Most attributes can be inherited or overriden on an any level
		-- There's no limit to the depth of nesting.
		mode = { "n", "v" },
		{ "<leader>k", "<cmd>bdelete<cr>", desc = "Kill buffer" },
		{ "<leader>p", "<cmd>Lazy<cr>", desc = "Plugin Manager" },
		{ "<leader>q", "<cmd>q<cr>", desc = "Quit" },
		{ "<leader>w", "<cmd>w!<cr>", desc = "Write" },
	},
})
