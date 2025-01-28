-- https://github.com/folke/which-key.nvim
local wk = require("which-key")
wk.add({
	-- Copilot chat
	--
	-- https://github.com/CopilotC-Nvim/CopilotChat.nvim?tab=readme-ov-file#tips
	{ '<leader>c', group = 'Chat' },

	{ '<leader>cc', group = 'Copilot' },
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
	{ '<leader>ss', '<cmd>nohlsearch<cr>',          desc = 'Clear search highlights' },

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
		{ '<leader>r', '<cmd>luafile %<cr>',  desc = 'Reload Luafile' },
		{ '<leader>v', '<c-w>v',              desc = 'Split vertically' },
		{ '<leader>-', '<c-w>s',              desc = 'Split holizontally' },
		{ '<leader>z', '<c-z>',               desc = 'Suspend' },

		-- Buffer navigation
		{ '<leader><tab>', '<cmd>bnext<cr>',   desc = 'Next buffer' },
		{ '<leader><s-tab>', '<cmd>bprev<cr>', desc = 'Previous buffer' },

		-- Windows
		{ '<leader>w', group = 'Window' },
		{ '<leader>we', '<cmd>edit!<cr>',               desc = 'Reload buffer' },
		{ '<leader>wh', '<cmd>vertical resize +10<cr>', desc = 'Expand width' },
		{ '<leader>wj', '<cmd>resize +10<cr>',          desc = 'Expand hight' },
		{ '<leader>wk', '<cmd>resize -10<cr>',          desc = 'Shrink hight' },
		{ '<leader>wl', '<cmd>vertical resize -10<cr>', desc = 'Shrink width' },
		{ '<leader>wq', '<c-w>q<cr>',                   desc = 'Quit window' },
		{ '<leader>ws', '<cmd>w!<cr>',                  desc = 'Save buffer' },
		{ '<leader>ww', '<c-w>w<cr>',                   desc = 'Switch window' },
		{ '<leader>wx', '<c-w>x<cr>',                   desc = 'Swap window' },

		-- Executions
		{ '<leader>x', group = 'Execute' },

		--- Rust
		{ '<leader>xc', group = 'Cargo' },
		{ '<leader>xcb', '<cmd>!cargo build<cr>', desc = "Build" },
		{ '<leader>xcc', '<cmd>!cargo check<cr>', desc = "Check" },
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
