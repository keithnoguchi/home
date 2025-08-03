-- https://github.com/folke/which-key.nvim
local wk = require("which-key")
wk.add({
	-- Normal and view mode.
	mode = { "n", "v" },

	-- Top level commands
	{ '<leader>a', '<cmd>Telescope find_files<cr>',desc = 'Files' },
	{ '<leader>c',                              group = 'Cargo/Rust' },
	{ '<leader>d', '<cmd>bdelete!<cr>',         desc  = 'Kill buffer' },
	{ '<leader>e', '<cmd>NvimTreeToggle<cr>',   desc  = 'Explore' },
	{ '<leader>f',                              group = 'File' },
	{ '<leader>g',                              group = 'Go' },
	{ '<leader>h', '<c-w>h',                    desc  = 'Move left' },
	{ '<leader>i',                              group = 'Info' },
	{ '<leader>j', '<c-w>j',                    desc  = 'Move down' },
	{ '<leader>k', '<c-w>k',                    desc  = 'Move up' },
	{ '<leader>l', '<c-w>l',                    desc  = 'Move right' },
	{ '<leader>m', '<c-w>_',                    desc  = 'Max out window' },
	{ '<leader>n',						        desc  = 'NPM/JavaScript' },
	{ '<leader>p', '<cmd>Lazy<cr>',             desc  = 'Plugin Manager' },
	{ '<leader>q', '<cmd>q<cr>',                desc  = 'Quit' },
	{ '<leader>r', '<cmd>edit!<cr>',            desc  = 'Reload buffer' },
	{ '<leader>s', '<cmd>w!<cr>',               desc  = 'Save' },
	{ '<leader>t',                              group = 'Tmux' },
	{ '<leader>v', '<cmd>Telescope buffers<cr>',desc  = 'Buffers' },
	{ '<leader>w',                              group = 'Window' },
	{ '<leader>x', '<cmd>split|terminal<cr>',   desc  = 'Terminal' },
	{ '<leader>z', '<c-z>',                     desc  = 'Suspend' },
	{ '<leader>,', '<c-w>=',                    desc  = 'Equal windows' },
	{ '<leader>.', '<cmd>CopilotChatToggle<cr>',desc  = 'Copilot' },
	{ '<leader>-', '<c-w>s',                    desc  = 'Split holizontally' },
	{ '<leader>;', '<c-w>v',                    desc  = 'Split vertically' },

	{
		-- terminal mode mappings.
		mode = { 't' },
		{ '<c-q>', '<c-\\><c-n>', desc  = 'Exit' },
	},

	-- Buffer navigation
	{ '<c-j>',   '<cmd>bnext<cr>', desc = 'Next buffer' },
	{ '<c-k>',   '<cmd>bprev<cr>', desc = 'Previous buffer' },

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
	{ '<leader>cb', '<cmd>!cargo build<cr>',           desc = 'Build' },
	{ '<leader>cc', '<cmd>!cargo check<cr>',           desc = 'Check' },
	{ '<leader>cf', '<cmd>silent !cargo fmt<cr>',      desc = 'Format' },
	{ '<leader>cr', '<cmd>!cargo build --release<cr>', desc = 'Release build' },
	{ '<leader>cv', '<cmd>!cargo test<cr>',            desc = 'Test' },
	{ '<leader>cw', 						           group = 'Workspace' },
	{ '<leader>cx', '<cmd>!cargo run<cr>',             desc = 'Run' },

	-- cargo workspace
	{ '<leader>cwb', '<cmd>!cargo build --workspace<cr>',           desc = 'Build' },
	{ '<leader>cwc', '<cmd>!cargo check --workspace<cr>',           desc = 'Check' },
	{ '<leader>cwr', '<cmd>!cargo build --workspace --release<cr>', desc = 'Release build' },
	{ '<leader>cwv', '<cmd>!cargo test --workspace<cr>',            desc = 'Test' },

	-- File operations
	{ '<leader>fc', '<cmd>Telescope colorscheme<cr>', desc = 'Color scheme' },
	{ '<leader>ff', '<cmd>Telescope find_files<cr>',  desc = 'Find files' },
	{ '<leader>fg', '<cmd>Telescope live_grep<cr>',   desc = 'Live grep' },
	{ '<leader>fh', '<cmd>Telescope help_tags<cr>',   desc = 'Help tags' },
	{ '<leader>fv', '<cmd>Telescope buffers<cr>',     desc = 'Buffers' },

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
				vim.cmd('!go test ' .. input)
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

	--- NPM/JavaScript
	{ '<leader>na',
		function()
			local input = vim.fn.input('Package: ')
			if input ~= '' then
				vim.cmd('!npm install ' .. input)
			end
		end,
		desc = 'Package',
	},
	{ '<leader>nc', '<cmd>!npm audit<cr>',                                desc = 'Audit' },
	{ '<leader>nf', '<cmd>silent !npx -y prettier --write "**/*.js"<cr>', desc = 'Format' },
	{ '<leader>ni', '<cmd>!npm install<cr>',                              desc = 'Install' },
	{ '<leader>nl', '<cmd>!npm ls<cr>',                                   desc = 'Packages' },
	{ '<leader>nu', '<cmd>!npm update<cr>',                               desc = 'Update' },
	{ '<leader>nv', '<cmd>!npm test<cr>',                                 desc = 'Test' },
	{ '<leader>nx', '<cmd>!npm start<cr>',                                desc = 'Run' },

	-- Tmux
	{ '<leader>ts',                       group = 'Sessions' },
	{ '<leader>tsj',
		function()
			vim.fn.system('tmux switch-client -n')
		end,
		desc = 'Next session'
	},
	{ '<leader>tsk',
		function()
			vim.fn.system('tmux switch-client -p')
		end,
		desc = 'Prev session'
	},
	{ '<leader>tsl', '<cmd>!tmux ls<cr>', desc = 'List sessions' },
	{ '<leader>tsn',
		function()
			local session_name = vim.fn.input('Session name: ')
			if session_name ~= '' then
				vim.fn.system('tmux new-session -d -s ' .. session_name)
				print('Created new session: ' .. session_name)
			end
		end,
		desc = 'New session'
	},
	{ '<leader>tsq',
		function()
			local session_name = vim.fn.input('Session name: ')
			if session_name ~= '' then
				vim.fn.system('tmux kill-session -t ' .. session_name)
			else
				vim.fn.system('tmux kill-session')
			end
		end,
		desc = 'Kill session'
	},

	{ '<leader>tw',                                 group = 'Windows' },
	{ '<leader>twl', '<cmd>!tmux list-windows<cr>', desc  = 'List windows' },
	{ '<leader>twh',
		function()
			vim.fn.system('tmux split-window -v')
		end,
		desc = 'Split window holizontaly',
	},
	{ '<leader>twj',
		function()
			vim.fn.system('tmux next-window')
		end,
		desc  = 'Next window',
	},
	{ '<leader>twk',
		function()
			vim.fn.system('tmux previous-window')
		end,
		desc  = 'Previous window',
	},
	{ '<leader>twv',
		function()
			vim.fn.system('tmux split-window -h')
		end,
		desc = 'Split window vertically',
	},
	{ '<leader>twz',
		function()
			vim.fn.system('tmux resize-pane -Z')
		end,
		desc = 'Maximize pane',
	},

	-- Windowing
	{ '<leader>wc',                                 group = 'Copilot' },
	{ '<leader>wf', '<cmd>resize +10<cr>',          desc = 'Taller hight' },
	{ '<leader>wh', '<c-w>s',                       desc = 'Split holizontally' },
	{ '<leader>wl', '<cmd>luafile %<cr>',           desc = 'Reload Luafile' },
	{ '<leader>wm', '<cmd>set number!<cr>',         desc  = 'Toggle line number' },
	{ '<leader>wn', '<cmd>vertical resize -10<cr>', desc = 'Narrow width' },
	{ '<leader>wo', '<c-w>o',                       desc = 'Single window' },
	{ '<leader>wq', '<c-w>q',                       desc = 'Quit window' },
	{ '<leader>wr', '<cmd>edit!<cr>',               desc = 'Reload buffer' },
	{ '<leader>ws', '<cmd>resize -10<cr>',          desc = 'Shorter hight' },
	{ '<leader>wv', '<c-w>v',                       desc = 'Split vertically' },
	{ '<leader>ww', '<cmd>vertical resize +10<cr>', desc = 'Widen width' },
	{ '<leader>wx', '<cmd>tabclose<cr>',            desc = 'Close tab' },
	{ '<leader>wz', '<cmd>tab split<cr>',           desc = 'Enlarge window' },
	{ '<leader>w=', '<c-w>=',                       desc = 'Equal windows' },
	{ '<leader>w|', '<c-w>|',                       desc = 'Maxout width' },

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
