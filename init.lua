local sounds = require("sounds")

sounds.play("~/.config/nvim/startup.mp3")

require("vim-opts")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local lazy_opts = {
	defaults = {
		lazy = true,
	},
}

require("lazy").setup("plugins", lazy_opts)
require("lualine").setup()

vim.cmd("colorscheme catppuccin")

-- require("mappings")
-- require("sounds")

vim.notify = require("notify")

-- Enable inlay hints
-- if vim.lsp.inlay_hint then
-- 	vim.lsp.inlay_hint.enable(0, true)
-- end

-- vim.schedule(function()
-- vim.cmd(":lua vim.lsp.inlay_hint.enable(0, true)")
-- end)
