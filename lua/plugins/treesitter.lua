return {
	"nvim-treesitter/nvim-treesitter",
	event = "BufEnter",
	cmd = { "TSInstall", "TSUpdate" },
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "lua", "rust", "vim", "regex", "bash", "markdown", "markdown_inline" },
		highlight = { enable = true },
		indent = { enable = true },
	},
}
