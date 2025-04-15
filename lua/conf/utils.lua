-- new buffer exec
function nbex(command)
  local filename = vim.fn.expand("%")
  vim.cmd("new")
  vim.cmd("silent %!" .. command .. " " .. filename)
end

local M = {}
M.nbex = nbex
return M
