-- If lazy.nvim repo not found, install in .config/nvim/plugins/lazy.nvim
local lazypath = vim.fn.stdpath("config") .. "/plugins/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set tab to 2 spaces, auto-indent 2 spaces
vim.cmd("set autoindent expandtab tabstop=2 shiftwidth=2")

-- Disable mouse in nvim
vim.cmd("set mouse=")

-- Show line numbers
vim.cmd("set number")

-- Load plugins
require("conf.settings")
require("conf.lazy")
require("conf.nvim-tree")
require("conf.melange-nvim")
require("conf.gitsigns")
require("conf.diffview")
require("conf.telescope")
require("conf.lsp")
require("conf.cmp")
