local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
--

-- Normal
keymap("n", "<C-h>", "<C-w>h", opts) -- left window
keymap("n", "<C-j>", "<C-w>j", opts) -- down window
keymap("n", "<C-k>", "<C-w>k", opts) -- up window
keymap("n", "<C-l>", "<C-w>l", opts) -- right window

-- Resize with arrows when using multiple windows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)

-- navigate buffers
keymap("n", "<tab>", ":bnext<cr>", opts) -- next buffer
keymap("n", "<s-tab>", "bprevious<cr>", opts) -- previous buffer
keymap("n", "<leader>h", "nohlsearch<cr>", opts) -- no highlight search

-- move text up and down
keymap("n", "<a-j>", "<esc>:m .+1<cr>==gi", opts) -- Alt-j
keymap("n", "<a-k>", "<esc>:m .-2<cr>==gi", opts) -- Alt-k

-- insert
-- press jk fast to exit insert mode
keymap("i", "jk", "<esc>", opts) -- Insert mode -> jk -> Normal mode
keymap("i", "kj", "<esc>", opts) -- insert mode -> kj -> normal mode

-- visual
-- -- stay in indent mode
keymap("v", "<", "<gv", opts) -- Right indentation
keymap("v", ">", ">gv", opts) -- left indentation
