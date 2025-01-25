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

	-- Reload
	{ '<leader>r', group = 'Reload' },
	{ '<leader>rl', '<cmd>luafile %<cr>', desc = 'Reload current luafile' },

	-- Searches
	{ '<leader>s', group = 'Search' },
	{ '<leader>sc', '<cmd>Telescope commands<cr>', desc = 'Search commands' },
	{ '<leader>sh', '<cmd>Telescope help_tags<cr>', desc = 'Find help' },
	{ '<leader>sk', '<cmd>Telescope keymaps<cr>', desc = 'Search keymaps' },
	{ '<leader>sm', '<cmd>Telescope man_pages<cr>', desc = 'Man pages' },
	{ '<leader>sr', '<cmd>Telescope registers<cr>', desc = 'Search registers' },

	-- Executions
	{ '<leader>x', group = 'Execution' },

	--- Rust
	{ '<leader>xc', group = 'Rust' },
	{ '<leader>xcc', '<cmd>!cargo clippy<cr>', desc = "Clippy" },
	{ '<leader>xcf', '<cmd>!cargo fmt<cr>', desc = "Format" },
	{ '<leader>xcr', '<cmd>!cargo run<cr>', desc = "Run" },
	{ '<leader>xct', '<cmd>!cargo test<cr>', desc = "Test" },

	--- Golang
	{ '<leader>xg', group = 'Golang' },
	{ '<leader>xgf',
		function()
			local input = vim.fn.input('File/directory to format: ')
			if input ~= '' then
				vim.cmd('!go fmt ' .. input)
			end
		end,
		desc = 'Format',
	},
	{ '<leader>xgr',
		function()
			local input = vim.fn.input('File/directory to run: ')
			if input ~= '' then
				vim.cmd('!go run ' .. input)
			end
		end,
		desc = 'Run',
	},
	{ '<leader>xgt',
		function()
			local input = vim.fn.input('File/directory to test: ')
			if input ~= '' then
				vim.cmd('!go run ' .. input)
			end
		end,
		desc = 'Test',
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
