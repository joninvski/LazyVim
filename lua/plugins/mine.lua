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
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
  },
  {
    "tpope/vim-fugitive",
    dependencies = { "tpope/vim-rhubarb"}
  },
  {
    'shumphrey/fugitive-gitlab.vim',
    version = "*",
    lazy = false,
    config = function()
      vim.g.fugitive_gitlab_domains = {'https://gitlab.eu-west-1.mgmt.onfido.xyz/'}
    end,
  },
  {
    'simnalamburt/vim-mundo',
    version = "*",
    lazy = false,
    config = function()
      vim.o.undofile = true
    end
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        java = true,
        ruby = true,
        lua = true,
        gradle = true,
        python = true,
        clojure = true,
        elixir = true,
        terraform = true,
        help = true,
        ["*"] = false
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
        max_width = 999,  -- Set your desired max width here
    },
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
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "just"
      }
    }
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
