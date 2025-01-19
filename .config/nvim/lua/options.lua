local opt = vim.opt

opt.autowrite = true -- Enable auto write
opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.confirm = true
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = false
opt.formatoptions = "jcroqlnt" -- tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
opt.incsearch = true
opt.laststatus = 0
opt.list = false -- Show some invisible characters (tabs...)
opt.mouse = "a" -- Enable mouse mode
opt.number = false -- Print line number
opt.pumblend = 10 -- Popup menu blend
opt.pumheight = 10 -- Maximum number of entries in a popup menu
opt.relativenumber = false -- Relative line numbers
opt.scrolloff = 5 -- Lines of context
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shiftround = true -- Round indent
opt.shiftwidth = 4 -- Size of an indent
opt.shortmess:append { W = true, I = true, c = true }
opt.showmode = false -- Don't show mode since we have a statusline
opt.sidescrolloff = 8
opt.signcolumn = "no" -- Always show the signcolumn, otherwise it would shift
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = false -- Insert indents automatically
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.tabstop = 4 -- Number of spaces tabs count for
opt.termguicolors = false -- True color support
opt.timeoutlen = 500 -- speed must be under 500ms in order for keys to work
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = true -- Disable line wrap

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0
