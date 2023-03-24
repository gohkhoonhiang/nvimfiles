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
    },
    {
      "lewis6991/gitsigns.nvim"
    },
    {
      "sindrets/diffview.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons"
      }
    },
    {
      "nvim-telescope/telescope.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim"
      }
    }
  },
  {
    root = vim.fn.stdpath("config") .. "/plugins",
    lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json"
  }
)
