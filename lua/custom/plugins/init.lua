return {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["github/copilot.vim"] = {
    config = function()
      -- vim.g.copilot_no_tab_map = true
      vim.cmd [[
        imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
        let g:copilot_no_tab_map = v:true
      ]]
    end,
  },
  ["olimorris/persisted.nvim"] = {
    save_dir = vim.fn.expand(vim.fn.stdpath "data" .. "/sessions/"), -- Resolves to ~/.local/share/nvim/sessions/
    autosave = true,
    use_git_branch = true,
    autoload = true,

    config = function()
      require("persisted").setup()
    end,
  },
  ["kylechui/nvim-surround"] = {
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup {}
    end,
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["windwp/nvim-ts-autotag"] = {
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  ["phaazon/hop.nvim"] = {
    branch = "v2", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
    end,
  },
  ["f-person/git-blame.nvim"] = {},
  ["glepnir/lspsaga.nvim"] = {
    config = function()
      require "custom.plugins.lspsaga"
    end,
  },
  ["simrat39/symbols-outline.nvim"] = {
    config = function()
      require "custom.plugins.symbols-outline"
    end,
  },
  -- ["MunifTanjim/prettier.nvim"] = {
  -- config = function()
  --   require "custom.plugins.prettier"
  -- end,
  -- },
  ["thesis/vim-solidity"] = {},
  ["nvim-orgmode/orgmode"] = {
    config = function()
      require "custom.plugins.orgmode"
    end,
  },
  ["JoosepAlviste/nvim-ts-context-commentstring"] = {},
  ["jose-elias-alvarez/typescript.nvim"] = {},
  ["nvim-lua/plenary.nvim"] = {},
  ["akinsho/flutter-tools.nvim"] = {
    config = function()
      require "custom.plugins.flutter-tools"
    end,
  },
  ["barklan/capslock.nvim"] = {
    config = function()
      require "custom.plugins.capslock-nvim"
    end,
  },
  ["simrat39/rust-tools.nvim"] = {
    config = function() end,
  },
  ["mhartington/formatter.nvim"] = {
    config = function()
      require "custom.plugins.formatter"
    end,
  },
  ["folke/trouble.nvim"] = {
    config = function()
      require "custom.plugins.trouble"
    end,
  },
}
