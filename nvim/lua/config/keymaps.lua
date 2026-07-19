vim.g.mapleader = " "

vim.keymap.set("x", "p", [["_dP]], {
    desc = "Paste over selection without losing yanked text",
})

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], {
    desc = "Delete without yanking",
})

vim.keymap.set("i", "<M-c>", "<Esc>")

vim.keymap.set("n", "<M-c>", ":nohl<CR>", {
    desc = "Clear search highlighting",
    silent = true,
})

vim.keymap.set("n", "<leader>fe", ":Ex<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {
    desc = "Move selected lines down",
})

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {
    desc = "Move selected lines up",
})

vim.keymap.set("v", "<", "<gv", {
    desc = "Unindent and keep selection",
})

vim.keymap.set("v", ">", ">gv", {
    desc = "Indent and keep selection",
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {
    desc = "Find files",
})

vim.keymap.set("n", "<leader>fw", builtin.live_grep, {
    desc = "Live grep",
})

vim.keymap.set("n", "<leader>fb", builtin.buffers, {
    desc = "Buffers",
})

vim.keymap.set("n", "<leader>fh", builtin.help_tags, {
    desc = "Help tags",
})

vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {
    desc = "Recent files",
})

vim.keymap.set("n", "<leader>fk", builtin.keymaps, {
    desc = "Keymaps",
})

vim.keymap.set("n", "<leader>fc", builtin.commands, {
    desc = "Commands",
})

vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find, {
    desc = "Search current buffer",
})

vim.keymap.set("n", "<M-h>", "<C-w>h", { desc = "Left split" })
vim.keymap.set("n", "<M-j>", "<C-w>j", { desc = "Down split" })
vim.keymap.set("n", "<M-k>", "<C-w>k", { desc = "Up split" })
vim.keymap.set("n", "<M-l>", "<C-w>l", { desc = "Right split" })
