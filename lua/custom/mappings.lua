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
      "<cmd>HopWordMW<cr>",
      "HopWordMW",
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

    -- tab next, tab prev
    ["<leader>tn"] = {
      "<cmd>tabNext<CR>",
      "Tab Next",
    },
    ["<leader>tp"] = {
      "<cmd>tabPrev<CR>",
      "Tab Prev",
    },
    ["<leader>tN"] = {
      "<cmd>tabnew<CR>",
    },
    ["<F9>"] = {
      "<cmd>tabmove -1<CR>",
    },
    ["<F10>"] = {
      "<cmd>tabmove +1<CR>",
    },
    ["<leader>ru"] = {
      function()
        require("typescript").actions.removeUnused()
      end,
    },
    ["<leader>fc"] = {
      function()
        require("telescope").extensions.flutter.commands()
      end,
      "Flutter Commands",
    },
    ["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "Code action" },
    ["<leader>ps"] = { "<cmd>Telescope persisted<CR>" },
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
    ["gd"] = { "<cmd>Lspsaga peek_definition<CR>", "Lspsaga peek_definition" },
    -- ["<leader>cd"] = {
    --   "<cmd>Lspsaga show_line_diagnostics<CR>",
    --   "Lspsaga show_line_diagnostics",
    -- },
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
