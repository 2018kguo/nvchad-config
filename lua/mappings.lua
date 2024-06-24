require "nvchad.mappings"

-- add yours here
local M = {}
local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map({"i"}, "<C-l>", "<cmd> w <cr>")

-- mapping with a function
map("i", "<C-l>", function()
    vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
end, { desc = "Accept copilot suggestion" , noremap = true, silent = true, expr = true, nowait = true, replace_keycodes = true})

