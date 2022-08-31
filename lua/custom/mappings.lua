local M = {}

M.custom = {
  n = {
    -- ["<leader>f"] = { "<cmd> Format <CR>", "Format" },
    -- ["<leader>F"] = { "<cmd> FormatWrite <CR>", "FormatWrite" },

    ["<C-J>"] = { "copilot#Accept('<CR>')", "Accept" },
    ["<C-H>"] = { "copilot#Previous()", "Previous" },
    ["<C-K>"] = { "copilot#Next()", "Next" },

    ["<C-p>"] = { "<Cmd>Telescope find_files<CR>" },
    ["<M-p>"] = { "<Cmd>Telescope persisted<CR>" },

    ["<leader>o"] = { "<cmd> execute '%bd|e#'<CR>", "execute" },
    -- :lua vim.lsp.buf.code_action({ diagnostics = vim.lsp.diagnostic.get_line_diagnostics(), only = { 'source.organizeImports' } })
    ["<leader>dca"] = {
      "<cmd>lua vim.lsp.buf.code_action({ diagnostics = vim.lsp.diagnostic.get_line_diagnostics(), only = { 'source.organizeImports' } })<CR>",
    },

    ["<M-n>"] = {
      "<cmd>HopLineMW<cr>",
      "HopLineMW",
    },
  },
}

return M
