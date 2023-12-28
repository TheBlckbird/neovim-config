vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>')
vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal left<CR>')

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})


vim.keymap.set("n", "m", "o<ESC>")
