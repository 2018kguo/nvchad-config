local M = {}

M.setup = function()
  -- Set highlight for active window
  vim.cmd("hi StatusLine guibg=LightGreen guifg=Black")

  -- Set highlight for inactive windows
  vim.cmd("hi StatusLineNC guibg=Grey guifg=White")
end

return M