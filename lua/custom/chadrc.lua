local pluginConfs = require "custom.plugins.configs"

-- Just an example, supposed to be placed in /lua/custom/
local M = {}

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["nvim-telescope/telescope.nvim"] = {
      extensions_list = { "themes", "terms", "persisted" },
    },
    ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
  },
}

M.ui = {
  theme = "gruvchad",
}

M.mappings = require "custom.mappings"

return M
