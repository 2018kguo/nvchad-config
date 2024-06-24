-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--
-- Improve cursor visibility
-- Set default cursor to block and disable blinking
-- In Kitty I disable this to use the cursor settings in kitty.conf instead
-- vim.o.guicursor = "n-v-c:block-Cursor/lCursor,a:blinkon0"

-- Undo settings
-- vim.opt.undofile = true
-- vim.opt.undodir = "~/.nvim/undo"

-- Set highlights
-- require "configs.highlights"

-- -- Hack to get line hightlighting to work taken from the github issue
-- vim.cmd [[

--    augroup ilikecursorline
--       autocmd VimEnter * :highlight CursorLine guibg=#303838
--    augroup END

-- ]]

-- -- Original highlight color for cursor line
-- local originalCursorLineColor = "#303838"

-- -- Highlight color for cursor line in insert mode
-- local insertModeCursorLineColor = "#38453f" -- replace with your preferred color

-- -- Function to set cursor line color
-- local function setCursorLineColor(color)
--     vim.cmd("highlight CursorLine guibg=" .. color)
-- end

-- -- Autocommands to change cursor line color on mode change
-- vim.api.nvim_create_autocmd("InsertEnter", {
--     pattern = "*",
--     callback = function()
--         setCursorLineColor(insertModeCursorLineColor)
--     end
-- })

-- vim.api.nvim_create_autocmd("InsertLeave", {
--     pattern = "*",
--     callback = function()
--         setCursorLineColor(originalCursorLineColor)
--     end
-- })