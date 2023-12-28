return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		local code_actions = null_ls.builtins.code_actions
		local completion = null_ls.builtins.completion
		local diagnostics = null_ls.builtins.diagnostics
		local formatting = null_ls.builtins.formatting
		local hover = null_ls.builtins.hover

		null_ls.setup({
			sources = {
				formatting.stylua,
				formatting.prettier,
				diagnostics.eslint,
			},
		})
	end,
	lazy = false,
}
