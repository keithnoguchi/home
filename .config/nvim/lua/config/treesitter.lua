require('nvim-treesitter.configs').setup{
	ensure_installed = {'toml'},
	indent = {
		enable = true,
		disable = {'go', 'rust', 'make', 'yaml'},
	},
	highlight = { enable = false },
	sync_install = false,
}
