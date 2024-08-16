-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<leader>q", ":qa<cr>", { desc = "Quit" })
vim.keymap.set("n", "<leader>o", require("telescope.builtin").git_files, { desc = "Search [G]it [F]iles" })
vim.keymap.set("n", "<leader>O", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
vim.keymap.set("n", "<leader>h", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<leader>l", "<cmd>bnext<cr>", { desc = "Next Buffer" })

vim.keymap.set("n", "<f2>", ":Neotree toggle<cr>", { desc = "Toggle Treesitter" })
vim.api.nvim_set_keymap("c", "<C-A>", "<Home>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("c", "<C-E>", "<End>", { noremap = true, silent = true })
vim.keymap.set("n", "<space>", "/", { desc = "Find in buffer " })
vim.keymap.set("n", "<c-space>", "?", { desc = "Find in buffer backwards" })

local zkOpts = { noremap=true, silent=false }
vim.api.nvim_set_keymap("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", zkOpts)
vim.api.nvim_set_keymap("n", "<leader>zO", "<Cmd>Telescope live_grep search_dirs={'~/my-notes'}<CR>", zkOpts)
