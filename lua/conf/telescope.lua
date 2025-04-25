require("telescope").setup({
  defaults = {
    -- Your defaults config goes in here
    mappings = {
      i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<C-f>"] = require("telescope.actions").send_to_qflist + require("telescope.actions").open_qflist,
        ["<C-q>"] = require("telescope.actions").close,
        ["<C-t>"] = require("telescope.actions").select_tab,
        ["qqq"] = require("telescope.actions").close,
      },
      n = {
        ["q"] = require("telescope.actions").close,
      }
    },
    file_ignore_patterns = {
      "*.swp", "public/", "yarn.lock", ".gitignore", "node_modules/", "log/",
      ".git/", "tmp/", "**/*.keep", ".ruby-lsp/", ".bundle/", "vendor/"
    },
    sorters = "fuzzy_with_index_bias",
  },
})

-- Key bindings
local m = require("conf.mappings")

m.nmap("<C-P>", ":Telescope find_files previewer=false theme=get_dropdown<CR>")
m.nmap("<C-S>", ":Telescope live_grep search_dirs=")
m.nmap("<C-T><C-J>", ":Telescope jumplist<CR>")
m.nmap("<C-T><C-G>", ":Telescope git_commits<CR>")
