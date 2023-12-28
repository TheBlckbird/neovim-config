return {
	"nvim-treesitter/nvim-treesitter",
	event = "BufEnter",
	cmd = {"TSInstall", "TSUpdate"},
	build = ":TSUpdate",
	opts = {
		ensure_installed = {"lua", "rust"},
		highlight = { enable = true },
		indent = { enable = true },
	},
}
