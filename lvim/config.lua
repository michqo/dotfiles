-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "tokyonight-night"
lvim.builtin.nvimtree.setup.filters.dotfiles = true
vim.g.tokyonight_dark_float = 0

-- vim options
vim.opt.relativenumber = true
vim.opt.mouse = ""

-- keymappings
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.term_mode["<C-l>"] = "<C-l>"
lvim.builtin.terminal.open_mapping = "<C-t>"

-- windows settings
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- treesitter plugins
lvim.builtin.treesitter.ensure_installed = {
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "svelte",
  "css",
  "prisma",
  "scss",
}

-- additional plugins settings
lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.treesitter.autotag = {
  enable = true
}

-- disable automatic installation of servers
lvim.lsp.installer.setup.automatic_installation = false

lvim.plugins = {
  {"windwp/nvim-ts-autotag"},
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end,
  },
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  }
}
