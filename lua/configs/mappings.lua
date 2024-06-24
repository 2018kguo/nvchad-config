-- ---@type MappingsTable
-- local M = {}

-- function CopyRelativePathToClipboard()
--   local relative_path = vim.fn.expand('%')
--   vim.fn.system('echo ' .. relative_path .. ' | pbcopy')
-- end

-- M.general = {
--   n = {
--     --  format with conform
--     ["<leader>fm"] = {
--       function()
--         require("conform").format()
--       end,
--       "formatting",
--     },

--     -- for showing errors from LSP
--     ["<D-.>"] = {":lua vim.diagnostic.open_float()<CR>", "show errors"},
--     -- for copying relative path to clipboard
--     ["<D-p>"] = {":lua CopyRelativePathToClipboard()<CR>", "copy relative path"},
--   },
--   v = {
--     [">"] = { ">gv", "indent"},
--   },
-- }

-- -- Copilot mappings yoinked from blog
-- M.copilot = {
--   i = {
--     ["<C-l>"] = {
--       function()
--         vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
--       end,
--       "Copilot Accept",
--       {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
--     }
--   }
-- }

-- return M
