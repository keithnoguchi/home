-- https://medium.com/@shaikzahid0713/the-neovim-series-32163eb1f5d0

--- https://medium.com/@shaikzahid0713/2bc6b878682
require("options")

--- https://medium.com/@shaikzahid0713/keyboard-shortcuts-in-neovim-d04cd7f551a7
require("keymaps")

--- https://medium.com/@shaikzahid0713/managing-plugins-using-lazy-d31e6dde3479
require("config.lazy")

--- https://medium.com/@shaikzahid0713/which-key-7554ac347c9d
require("config.which-key")

--- https://medium.com/@shaikzahid0713/telescope-333594836896
require("config.telescope")

--- https://medium.com/@shaikzahid0713/code-completion-for-neovim-6127401ebec2
require("config.lspconfig")

--- https://github.com/hrsh7th/nvim-cmp
require('config.cmp')

--- https://tamerlan.dev/setting-up-copilot-in-neovim-with-sane-settings/
require('config.copilot')

--- https://github.com/zbirenbaum/copilot-cmp
require('config.copilot-cmp')

--- https://github.com/CopilotC-Nvim/CopilotChat.nvim
require('config.copilot-chat')

--- https://medium.com/@shaikzahid0713/file-explorer-for-neovim-c324d2c53657
require('config.tree')

--- https://medium.com/@shaikzahid0713/treesitter-7a52f64291c8
require('config.treesitter')

vim.g.copilot_enabled = false
