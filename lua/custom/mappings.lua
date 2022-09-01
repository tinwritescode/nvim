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

    ["<M-g>"] = {
      function()
        require("nvterm.terminal").send("lazygit", "vertical")
        require("nvterm.terminal").show "vertical"
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
    ["<leader>o"] = {
      "<cmd>Lspsaga outlineToggle<CR>",
      "Lspsaga outlineToggle",
    },
    ["K"] = { "<cmd>Lspsaga hover_doc<CR>", "Lspsaga hover_doc" },
    ["<C-\\><C-n>"] = {
      "<cmd>Lspsaga close_floaterm<CR>",
      "Lspsaga close_floaterm",
    },
    ["<leader>ca"] = { "<cmd>Lspsaga code_action<CR>", "Code action" },
  },
}

return M
