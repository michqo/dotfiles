-- nvim-tree
require("nvim-tree").setup({
  view = {
    hide_root_folder = true
  },
  filters = {
    custom = {"^.git$"},
    dotfiles = true
  }
})

-- toggleterm
require("toggleterm").setup({
  size = 20,
  close_on_exit = true,
  direction = "float",
  float_opts = {
    border = "curved",
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal"
    }
  }
})

-- nvim-autopairs
local npairs = require("nvim-autopairs")
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

npairs.setup({
  check_ts = true,
  ts_config = {
    lua = {'string'},-- it will not add a pair on that treesitter node
    javascript = {'template_string'},
  }
})

-- nvim-comment
require("nvim_comment").setup({
  hook = function()
    require("ts_context_commentstring.internal").update_commentstring()
  end,
})

-- treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "javascript",
    "typescript",
    "svelte",
    "css",
    "scss",
    "json",
    "lua",
    "python"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}

-- telescope
require('telescope').setup{
  defaults = {
    preview = false
  }
}
