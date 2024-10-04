-- source: https://github.com/ZwodahS/vimfiles/blob/master/lua/conf/settings.lua
local m = require("conf.mappings")

------ Unbind stuffs
m.nmap("Q", "<NOP>")
m.nmap("<C-G>", "<NOP>")
m.nmap("<C-H>", "<NOP>")
m.imap("<C-H>", "<NOP>")
m.nmap("<C-Q>", "<NOP>")
m.nmap("<C-T>", "<NOP>")

------ Options
vim.opt.listchars = { eol = "↵", tab = "¬ " }
vim.opt.wrap = false
vim.opt.directory = vim.fn.stdpath("config") .. "/.swp"
vim.opt.colorcolumn = "119,120"
vim.opt.showtabline = 2 -- always show

------ Key bindings
-- windows
m.nmap("<leader>hs", ":split<CR>")
m.nmap("<leader>vs", ":vsplit<CR>")
m.nmap("<leader>e", ":tabedit<CR>")
-- wrap
m.nmap("<leader>w", ":set wrap!<CR>")
-- telescope
m.nmap("<C-T><C-W>", "<cmd>Telescope grep_string<CR>")
