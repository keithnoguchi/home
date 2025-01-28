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

	-- File exploring with NvimTree
	{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explore" },

	-- File operations
	{ "<leader>f", group = "File" },
	{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
	{ "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Color scheme" },
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
	{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
	{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },

	-- Searches
	{ '<leader>s', group = 'Search' },
	{ '<leader>sc', '<cmd>Telescope commands<cr>',  desc = 'Search commands' },
	{ '<leader>sh', '<cmd>Telescope help_tags<cr>', desc = 'Find help' },
	{ '<leader>sk', '<cmd>Telescope keymaps<cr>',   desc = 'Search keymaps' },
	{ '<leader>sl', '<cmd>LspInfo<cr>',             desc = 'LSP info' },
	{ '<leader>sm', '<cmd>Telescope man_pages<cr>', desc = 'Man pages' },
	{ '<leader>sr', '<cmd>Telescope registers<cr>', desc = 'Search registers' },

	-- Normal and view mode.
	{
		-- Nested mappings are allowed and can be added in any order
		-- Most attributes can be inherited or overriden on an any level
		-- There's no limit to the depth of nesting.
		mode = { "n", "v" },
		{ '<leader>d', '<cmd>bdelete<cr>',    desc = 'Kill buffer' },
		{ '<leader>h', '<c-w>h',              desc = 'Move left' },
		{ '<leader>j', '<c-w>j',              desc = 'Move down' },
		{ '<leader>k', '<c-w>k',              desc = 'Move up' },
		{ '<leader>l', '<c-w>l',              desc = 'Move right' },
		{ '<leader>o', '<c-w>o',              desc = 'Single window' },
		{ '<leader>p', '<cmd>Lazy<cr>',       desc = 'Plugin Manager' },
		{ '<leader>q', '<cmd>q<cr>',          desc = 'Quit' },
		{ '<leader>v', '<c-w>v',              desc = 'Split vertically' },
		{ '<leader>w', '<cmd>w!<cr>',         desc = 'Write' },
		{ '<leader>-', '<c-w>s',              desc = 'Split holizontally' },
		{ '<leader>z', '<c-z>',               desc = 'Suspend' },

		-- Buffer navigation
		{ '<leader><tab>', '<cmd>bnext<cr>',   desc = 'Next buffer' },
		{ '<leader><s-tab>', '<cmd>bprev<cr>', desc = 'Previous buffer' },

		-- Reload
		{ '<leader>r', group = 'Reload/Resize' },
		c '<leader>rc', '<cmd>luafile %<cr>',           desc = 'Luafile' },
		{ '<leader>re', '<cmd>edit!<cr>',               desc = 'Buffer' },
		{ '<leader>rh', '<cmd>vertical resize +10<cr>', desc = 'Expand width' },
		{ '<leader>rj', '<cmd>resize +10<cr>',          desc = 'Expand hight' },
		{ '<leader>rk', '<cmd>resize -10<cr>',          desc = 'Shrink hight' },
		{ '<leader>rl', '<cmd>vertical resize -10<cr>', desc = 'Shrink width' },
		{ '<leader>rs', '<cmd>nohlsearch<cr>',          desc = 'Highlight search' },

		-- Executions
		{ '<leader>x', group = 'Commands' },

		--- Rust
		{ '<leader>xc', group = 'Cargo' },
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
	},
})
