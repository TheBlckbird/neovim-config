return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VeryLazy",
	config = function()
		require("bufferline").setup({
			options = {
				offsets = {
					{
						filetype = "neo-tree",
						text = "Files explorer",
						separator = true,
						text_align = "center",
					},
				},
				diagnostics = "nvim_lsp",
				--				separator_style = { "", "" },
				modified_icon = "●",
				themable = true,
			},
		})
	end,
}
