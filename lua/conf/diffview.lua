-- Key bindings
local m = require("conf.mappings")

m.nmap("<leader>gdo", ":DiffviewFileHistory %<CR>")
m.nmap("<leader>gdc", ":DiffviewClose<CR>")
