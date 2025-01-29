-- https://github.com/folke/which-key.nvim
local wk = require("which-key")
wk.add({
	-- Normal and view mode.
	mode = { "n", "v" },

	-- Top level commands
	{ '<leader>c',                            group = 'Cargo' },
	{ '<leader>d', '<cmd>bdelete<cr>',        desc  = 'Kill buffer' },
	{ '<leader>e', '<cmd>NvimTreeToggle<cr>', desc  = 'Explore' },
	{ '<leader>f',                            group = 'File' },
	{ '<leader>g',                            group = 'Golang' },
	{ '<leader>h', '<c-w>h',                  desc  = 'Move left' },
	{ '<leader>i',                            group = 'Info' },
	{ '<leader>j', '<c-w>j',                  desc  = 'Move down' },
	{ '<leader>k', '<c-w>k',                  desc  = 'Move up' },
	{ '<leader>l', '<c-w>l',                  desc  = 'Move right' },
	{ '<leader>n', '<cmd>set number!<cr>',    desc  = 'Toggle line number' },
	{ '<leader>p', '<cmd>Lazy<cr>',           desc  = 'Plugin Manager' },
	{ '<leader>q', '<cmd>q<cr>',              desc  = 'Quit' },
	{ '<leader>r', '<cmd>luafile %<cr>',      desc  = 'Reload Luafile' },
	{ '<leader>s', '<cmd>w!<cr>',             desc  = 'Save' },
	{ '<leader>t',                            group = 'Tmux' },
	{ '<leader>w',                            group = 'Window' },
	{ '<leader>x',                            group = 'Execute' },
	{ '<leader>z', '<c-z>',                   desc  = 'Suspend' },

	-- Buffer navigation
	{ '<tab>',   '<cmd>bnext<cr>', desc = 'Next buffer' },
	{ '<s-tab>', '<cmd>bprev<cr>', desc = 'Previous buffer' },

	--- Cargo/Rust
	{ '<leader>ca',
		function()
			local input = vim.fn.input('Crate: ')
			if input ~= '' then
				vim.cmd('!cargo add ' .. input)
			end
		end,
		desc = 'Crate',
	},
	{ '<leader>cb', '<cmd>!cargo build<cr>', desc = 'Build' },
	{ '<leader>cc', '<cmd>!cargo check<cr>', desc = 'Check' },
	{ '<leader>cf', '<cmd>!cargo fmt<cr>',   desc = 'Format' },
	{ '<leader>cv', '<cmd>!cargo test<cr>',  desc = 'Test' },
	{ '<leader>cx', '<cmd>!cargo run<cr>',   desc = 'Run' },

	-- File operations
	{ '<leader>fb', '<cmd>Telescope buffers<cr>',     desc = 'Buffers' },
	{ '<leader>fc', '<cmd>Telescope colorscheme<cr>', desc = 'Color scheme' },
	{ '<leader>ff', '<cmd>Telescope find_files<cr>',  desc = 'Find files' },
	{ '<leader>fg', '<cmd>Telescope live_grep<cr>',   desc = 'Live grep' },
	{ '<leader>fh', '<cmd>Telescope help_tags<cr>',   desc = 'Help tags' },

	--- Golang
	{ '<leader>gf',
		function()
			local input = vim.fn.input('File/directory to format: ')
			if input ~= '' then
				vim.cmd('!go fmt ' .. input)
			end
		end,
		desc = 'Format',
	},
	{ '<leader>gv',
		function()
			local input = vim.fn.input('File/directory to test: ')
			if input ~= '' then
				vim.cmd('!go run ' .. input)
			end
		end,
		desc = 'Test',
	},
	{ '<leader>gx',
		function()
			local input = vim.fn.input('File/directory to run: ')
			if input ~= '' then
				vim.cmd('!go run ' .. input)
			end
		end,
		desc = 'Run',
	},

	-- Info
	{ '<leader>ic', '<cmd>Telescope commands<cr>',  desc = 'Search commands' },
	{ '<leader>ih', '<cmd>Telescope help_tags<cr>', desc = 'Find help' },
	{ '<leader>ik', '<cmd>Telescope keymaps<cr>',   desc = 'Search keymaps' },
	{ '<leader>il', '<cmd>LspInfo<cr>',             desc = 'LSP info' },
	{ '<leader>im', '<cmd>Telescope man_pages<cr>', desc = 'Man pages' },
	{ '<leader>ir', '<cmd>Telescope registers<cr>', desc = 'Search registers' },
	{ '<leader>is', '<cmd>nohlsearch<cr>',          desc = 'Clear search highlights' },

	-- Tmux
	{ '<leader>tc', '<cmd>!tmux list-clients<cr>',     desc = 'Clients' },
	{ '<leader>th',
		function()
			vim.fn.system('tmux split-window -v')
		end,
		desc = 'Split holizontaly',
	},
	{ '<leader>tn',
		function()
			vim.fn.system('tmux switch-client -n')
		end,
		desc = 'Next session'
	},
	{ '<leader>tl', '<cmd>!tmux ls<cr>',               desc = 'Sessions' },
	{ '<leader>tp',
		function()
			vim.fn.system('tmux switch-client -l')
		end,
		desc = 'Prev session'
	},
	{ '<leader>tv',
		function()
			vim.fn.system('tmux split-window -h')
		end,
		desc = 'Split vertically',
	},
	{ '<leader>tw', '<cmd>!tmux list-windows<cr>',     desc = 'Windows' },
	{ '<leader>tz',
		function()
			vim.fn.system('tmux resize-pane -Z')
		end,
		desc = 'Maximize pane',
	},

	-- Windows
	{ '<leader>wc',                                 group = 'Chat' },
	{ '<leader>we', '<cmd>edit!<cr>',               desc = 'Reload buffer' },
	{ '<leader>wh', '<cmd>vertical resize -10<cr>', desc = 'Shrink width' },
	{ '<leader>wj', '<cmd>resize +10<cr>',          desc = 'Expand hight' },
	{ '<leader>wk', '<cmd>resize -10<cr>',          desc = 'Shrink hight' },
	{ '<leader>wl', '<cmd>vertical resize +10<cr>', desc = 'Expand width' },
	{ '<leader>wn', '<cmd>set number!<cr>',         desc = 'Toggle line number' },
	{ '<leader>wo', '<c-w>o',                       desc = 'Single window' },
	{ '<leader>wq', '<c-w>q<cr>',                   desc = 'Quit window' },
	{ '<leader>ws', '<c-w>s',                       desc = 'Split holizontally' },
	{ '<leader>wv', '<c-w>v',                       desc = 'Split vertically' },
	{ '<leader>wx', '<c-w>x<cr>',                   desc = 'Swap window' },
	{ '<leader>w=', '<c-w>=<cr>',                   desc = 'Equal windows' },
	{ '<leader>w|', '<c-w>|<cr>',                   desc = 'Maxout width' },

	-- Copilot chat
	--
	-- https://github.com/CopilotC-Nvim/CopilotChat.nvim?tab=readme-ov-file#tips
	{ '<leader>wcd', '<cmd>CopilotChatDocs<cr>', desc = 'Document' },
	{ '<leader>wce', '<cmd>CopilotChatExplain<cr>', desc = 'Explain' },
	{ '<leader>wcf', '<cmd>CopilotChatFix<cr>', desc = 'Fix' },
	{ '<leader>wcm', '<cmd>CopilotChatModels<cr>', desc = 'Models' },
	{ '<leader>wco', '<cmd>CopilotChatOptimize<cr>', desc = 'Optimize' },
	{ '<leader>wcp',
		function()
			local actions = require('CopilotChat.actions')
			require('CopilotChat.integrations.telescope').pick(
				actions.prompt_actions()
			)
		end,
		desc = 'Prompt',
	},
	{ '<leader>wcq',
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
	{ '<leader>wcr', '<cmd>CopilotChatReview<cr>', desc = 'Review' },
	{ '<leader>wcs', '<cmd>CopilotChatSave<cr>', desc = 'Save' },
	{ '<leader>wct', '<cmd>CopilotChatTest<cr>', desc = 'Test' },
	{ '<leader>wcv', '<cmd>CopilotChatToggle<cr>', desc = 'Toggle' },
})
