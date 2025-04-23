vim.opt.termguicolors = true
vim.api.nvim_create_autocmd({"ColorScheme"}, {
 callback = function ()
    vim.api.nvim_set_hl(0, "@ibl.scope.char.1", { fg = "#777777" })
    vim.api.nvim_set_hl(0, "@ibl.indent.char.1", { fg = "#666666" })
 end,
})
vim.cmd.colorscheme("miasma")
