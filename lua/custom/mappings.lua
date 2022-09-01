local M = {}

M.custom = {
  n = {
    ["<C-J>"] = { "copilot#Accept('<CR>')", "Accept" },
    ["<C-H>"] = { "copilot#Previous()", "Previous" },
    ["<C-K>"] = { "copilot#Next()", "Next" },

    ["<C-p>"] = { "<Cmd>Telescope find_files<CR>" },
    ["<M-p>"] = { "<Cmd>Telescope persisted<CR>" },

    ["<leader>O"] = { "<cmd> execute '%bd|e#'<CR>", "close other editors" },
    -- :lua vim.lsp.buf.code_action({ diagnostics = vim.lsp.diagnostic.get_line_diagnostics(), only = { 'source.organizeImports' } })
    ["<leader>dca"] = {
      "<cmd>lua vim.lsp.buf.code_action({ diagnostics = vim.lsp.diagnostic.get_line_diagnostics(), only = { 'source.organizeImports' } })<CR>",
    },

    ["<M-n>"] = {
      "<cmd>HopLineMW<cr>",
      "HopLineMW",
    },

    ["<M-g>"] = {
      function()
        require("nvterm.terminal").send("lazygit", "vertical")
      end,
      "lazygit",
    },

    ["<leader>o"] = {
      "<cmd>SymbolsOutline<CR>",
      "SymbolsOutline toggle",
    },
  },

  t = {
    ["<M-g>"] = {
      function()
        require("nvterm.terminal").send("lazygit", "vertical")
      end,
      "lazygit",
    },
  },
}

M.lspconfig = {
  n = {
    ["gh"] = { "<cmd>Lspsaga lsp_finder<CR>", "Lspsaga lsp_finder" },
    ["gr"] = { "<cmd>Lspsaga rename<CR>", "Lspsaga rename" },
    ["gd"] = { "<cmd>Lspsaga preview_definition<CR>", "Lspsaga preview_definition" },
    ["<leader>cd"] = {
      "<cmd>Lspsaga show_line_diagnostics<CR>",
      "Lspsaga show_line_diagnostics",
    },
    ["<leader>cd"] = {
      "<cmd>Lspsaga show_cursor_diagnostics<CR>",
      "Lspsaga show_cursor_diagnostics",
    },
    ["[e"] = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Lspsaga diagnostic_jump_prev" },
    ["]e"] = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "Lspsaga diagnostic_jump_next" },
    ["[E"] = {
      function()
        require("lspsaga.diagnostic").goto_prev { severity = vim.diagnostic.severity.ERROR }
      end,
      "Lspsaga goto_prev",
    },
    ["]E"] = {
      function()
        require("lspsaga.diagnostic").goto_next { severity = vim.diagnostic.severity.ERROR }
      end,
      "Lspsaga goto_next",
    },
    ["K"] = { "<cmd>Lspsaga hover_doc<CR>", "Lspsaga hover_doc" },
    ["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "Code action" },
  },
}

return M
