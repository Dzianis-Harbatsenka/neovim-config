vim.keymap.set("n", "<leader>e", ":Ex<CR>")
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

--Buffers
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>")

-- Diagnostics
vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float)

-- System Clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set({ "n", "v" }, "<leader>P", '"+P')
