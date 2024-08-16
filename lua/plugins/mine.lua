return {
  -- add gruvbox

  { "ellisonleao/gruvbox.nvim" },
  { "navarasu/onedark.nvim" },
  { "godlygeek/tabular"},
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "storm" },
  },
  {
    "tpope/vim-fugitive",
    dependencies = { "tpope/vim-rhubarb"}
  },
  {
    'jpalardy/vim-slime',
    lazy = false,
    config = function()
      vim.g.slime_target = 'tmux'
    end
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  { -- :PlantumlOpen will show you the plantuml in a browser
    "weirongxu/plantuml-previewer.vim",
    dependencies = { "tyru/open-browser.vim" },
  },
  {
    "mickael-menu/zk-nvim",
    lazy = false,
    version = "*",
    config = function()
      require("zk").setup({
        -- See Setup section below
        picker = "telescope",
        lsp = {
          -- `config` is passed to `vim.lsp.start_client(config)`
          config = {
            cmd = { "zk", "lsp" },
            name = "zk",
            -- on_attach = ...
            -- etc, see `:h vim.lsp.start_client()`
          },

          -- automatically attach buffers in a zk notebook that match the given filetypes
          auto_attach = {
            enabled = true,
            filetypes = { "markdown" },
          },
        },
      })
    end
  }
}
