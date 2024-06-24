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

-- Key mappings for LSP diagnostics
map('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = "Open diagnostic float", noremap = true, silent = true })
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { desc = "Go to previous diagnostic", noremap = true, silent = true })
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', { desc = "Go to next diagnostic", noremap = true, silent = true })
map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', { desc = "Set diagnostics to location list", noremap = true, silent = true })

-- :lua require("telescope").extensions.live_grep_args.live_grep_args()
map("n", "<leader>fw", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", { desc = "Live grep with args" })