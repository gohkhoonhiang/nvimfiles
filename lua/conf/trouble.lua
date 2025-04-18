require("trouble").setup({
  cmd = "Trouble",
})

-- Key bindings
local m = require("conf.mappings")

m.nmap("<leader>xx", "<cmd>Trouble diagnostics toggle<CR>") -- Diagnostics (Trouble)
m.nmap("<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>") -- Buffer Diagnostics (Trouble)
m.nmap("<leader>cs", "<cmd>Trouble symbols toggle focus=false win.position=left<CR>") -- Symbols (Trouble)
m.nmap("<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=bottom<CR>") -- LSP Definitions / references / ... (Trouble)
m.nmap("<leader>xL", "<cmd>Trouble loclist toggle<CR>") -- Location List (Trouble)
m.nmap("<leader>xQ", "<cmd>Trouble qflist toggle<CR>") -- Quickfix List (Trouble)
