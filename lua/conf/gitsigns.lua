require("gitsigns").setup({
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 0
  },
  signs = {
    add          = { text = "+" },
    change       = { text = "+" },
    delete       = { text = "-" },
    topdelete    = { text = "‾" },
    changedelete = { text = "~" },
    untracked    = { text = "?" },
  }
})

-- Key bindings
local m = require("conf.mappings")

m.nmap("<leader>ga", ":Gitsigns stage_hunk<CR>")
