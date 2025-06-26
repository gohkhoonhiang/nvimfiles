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
m.nmap("<leader>ef", ":tabedit <cfile><CR>")
m.nmap("<leader>sh", ":windo wincmd K<CR>") --- switch to horizontal
m.nmap("<leader>sv", ":windo wincmd H<CR>") --- switch to vertical
m.nmap("<leader>t", "<C-W>gf<CR>") --- open file under cursor in new tab
-- wrap
m.nmap("<leader>w", ":set wrap!<CR>")
-- telescope
m.nmap("<C-T><C-W>", "<cmd>Telescope grep_string<CR>")
-- cmp
m.nmap("gD","<cmd>lua vim.lsp.buf.declaration()<CR>")
m.nmap("gd","<cmd>tab split | lua vim.lsp.buf.definition()<CR>")
m.nmap("gf","<cmd>lua vim.lsp.buf.references()<CR>")
m.nmap("K","<cmd>lua vim.lsp.buf.hover()<CR>")
m.nmap("gs","<cmd>lua vim.lsp.buf.signature_help()<CR>")
-- ruby
m.nmap("<leader>rb", "<cmd>lua require('conf.utils').nbex('bundle exec rubocop')<CR>")
m.nmap("<leader>rs", "<cmd>lua require('conf.utils').nbex('bin/rspec')<CR>")
-- resty
m.nmap("<leader>rr", "<cmd>Resty run<CR>")
m.nmap("<leader>jpp", ":%!jq .<CR>")
