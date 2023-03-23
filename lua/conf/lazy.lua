require("lazy").setup({
    {
      "nvim-tree/nvim-tree.lua",
      version = "*",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
      config = function()
        require("nvim-tree").setup {}
      end
    },
    {
      "savq/melange-nvim"
    }
  },
  {
    root = vim.fn.stdpath("config") .. "/plugins",
    lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json"
  }
)
