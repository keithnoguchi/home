-- https://github.com/folke/which-key.nvim
local wk = require("which-key")
wk.add({
	{ "<leader>f", group = "File" },
	{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
	{ "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Color scheme" },
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
	{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
	{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
	{ "<leader>l", "<cmd>LspInfo<cr>", desc = "LSP info" },
	{ "<leader>s", group = "search" },
	{ "<leader>sc", "<cmd>Telescope commands<cr>", desc = "Commands" },
	{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Find help" },
	{ "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
	{ "<leader>sm", "<cmd>Telescope man_pages<cr>", desc = "Man pages" },
	{ "<leader>sr", "<cmd>Telescope registers<cr>", desc = "Registers" },
	{
		-- Nested mappings are allowed and can be added in any order
		-- Most attributes can be inherited or overriden on an any level
		-- There's no limit to the depth of nesting.
		mode = { "n", "v" },
		{ "<leader>k", "<cmd>bdelete<cr>", desc = "Kill buffer" },
		{ "<leader>p", "<cmd>Lazy<cr>", desc = "Plugin Manager" },
		{ "<leader>q", "<cmd>q<cr>", desc = "Quit" },
		{ "<leader>w", "<cmd>w<cr>", desc = "Write" },
	},
})
