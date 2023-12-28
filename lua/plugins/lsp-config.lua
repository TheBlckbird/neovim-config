return {
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonUpdate", "MasonInstall", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"rust_analyzer",
				"tsserver",
			},
		},
--		event = "VeryLazy",
		lazy = false,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup {}
			lspconfig.rust_analyzer.setup {}
			lspconfig.tsserver.setup {}
		end
	},
}

