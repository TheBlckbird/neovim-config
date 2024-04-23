-- local rust_tools = require("rustaceanvim")

return {
	["<leader>"] = {
		e = { "<cmd>Neotree filesystem toggle left<CR>", "Toggle Neotree" },
		n = { "<cmd>Neotree filesystem reveal left<CR>", "Reveal Neotree" },

		ih = { "<cmd>lua vim.lsp.inlay_hint.enable(0, true)<CR>", "Enable inlay hints" },

		c = {
			name = "+lsp actions",
			a = { vim.lsp.buf.code_action, {}, "Show code actions" },
		},

		g = {
			name = "+more lsp actions",
			d = { vim.lsp.buf.definition, {}, "Goto definition" },
			r = { vim.lsp.buf.references, {}, "Goto references" },
			f = { vim.lsp.buf.format, {}, "Format document" },
		},

		-- rt = {
		-- 	name = "+rust tools",
		-- 	c = { rust_tools.open_cargo_toml.open_cargo_toml(), "Open Cargo.toml" },
		-- 	e = { rust_tools.expand_macro.expand_macro(), "Expand Macro" },
		-- 	r = { rust_tools.runnables.runnables(), "Runnables" },
		-- 	h = { rust_tools.inlay_hints.enable(), "Enable inlay hints" },
		-- },

		l = {
			a = { "<cmd> " },
		},

		x = { "<cmd>BufferLineCyclePrev<CR><cmd>BufferLineCloseRight<CR>", "Close current tab" },
		p = { "<cmd>BufferLineTogglePin", "Toggle pinned tab" },
	},

	K = { vim.lsp.buf.hover, {}, "Show hover lsp action" },
	m = { "o<ESC>", "Add newline" },
	["<Tab>"] = { "<cmd>BufferLineCycleNext<CR>", "Cycle to next tab" },
	["<S-Tab>"] = { "<cmd>BufferLineCyclePrev<CR>", "Cycle to previous tab" },
}
