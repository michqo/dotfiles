return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    }
  },
  {
    "itchyny/lightline.vim",
    lazy = false,
    config = function()
      vim.g.lightline = {
        colorscheme = "tokyonight",
        active = {
          left = {{'mode'}, {'readonly', 'filename', 'modified'}},
          right = {{'lineinfo'}, {'percent'}}
        },
        tabline = {
          right = {}
        }
      }
    end
  },
  "windwp/nvim-autopairs",
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "windwp/nvim-ts-autotag",
  "JoosepAlviste/nvim-ts-context-commentstring",
  "terrortylor/nvim-comment",
  "antoinemadec/FixCursorHold.nvim",
  "akinsho/toggleterm.nvim",
}
