local pluginConfs = require "custom.plugins.configs"

local M = {}

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["nvim-telescope/telescope.nvim"] = {
      extensions_list = { "themes", "terms", "persisted", "flutter" },
    },
    ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
    ["williamboman/mason.nvim"] = {
      override_options = {
        ensure_installed = {
          -- lua stuff
          "lua-language-server",
          "stylua",

          -- web dev
          "css-lsp",
          "html-lsp",
          "typescript-language-server",
          "deno",
          "emmet-ls",
          "json-lsp",

          -- shell
          "shfmt",
          "shellcheck",

          -- tailwindcss, svelte
          "tailwindcss-language-server",
          "svelte-language-server",

          "prettier",
          "prisma-language-server",
          "rust-analyzer",
          "stylua",
        },
      },
    },
    ["hrsh7th/nvim-cmp"] = {
      override_options = {
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "nvim_lua" },
          { name = "path" },
        },
      },
    },
  },
}

M.ui = {
  theme = "ayu-dark",
}

M.mappings = require "custom.mappings"

return M
