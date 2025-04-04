local nvim_lsp = require("lspconfig")
local cmp = require("cmp_nvim_lsp")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.ruby_lsp.setup{
  cmd = { vim.fn.stdpath("config") .. "/bin/ruby-lsp" },
  capabilities = cmp.default_capabilities(capabilities)
}

require("outline").setup({
 outline_window = {
  relative_width = false,
  width = 35,
 }
})
