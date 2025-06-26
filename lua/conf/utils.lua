-- new buffer exec
function nbex(command)
  local filename = vim.fn.expand("%")
  vim.cmd("new")
  vim.cmd("silent %!" .. command .. " " .. filename)
end

function nbexln(command)
  local filename = vim.fn.expand("%")
  local pos = vim.fn.getpos(".")
  vim.cmd("new")
  vim.cmd("silent %!" .. command .. " " .. filename .. ":" .. pos[2])
end

local M = {}
M.nbex = nbex
M.nbexln = nbexln
return M
