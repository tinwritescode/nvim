local M = {}
local util = require "formatter.util"

M.setup = function()
  -- Prvides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
  require("formatter").setup {
    -- Enable or disable logging
    logging = true,
    -- Set the log level
    log_level = vim.log.levels.WARN,
    -- All formatter configurations are opt-in
    filetype = {
      -- Formatter configurations for filetype "lua" go here
      -- and will be executed in order
      lua = {
        -- "formatter.filetypes.lua" defines default configurations for the
        -- "lua" filetype
        require("formatter.filetypes.lua").stylua,

        -- You can also define your own configuration
        function()
          -- Supports conditional formatting
          if util.get_current_buffer_file_name() == "special.lua" then
            return nil
          end

          -- Full specification of configurations is down below and in Vim help
          -- files
          return {
            exe = "stylua",
            args = {
              "--search-parent-directories",
              "--stdin-filepath",
              util.escape_path(util.get_current_buffer_file_path()),
              "--",
              "-",
            },
            stdin = true,
          }
        end,
      },

      sh = { require("formatter.filetypes.sh").shfmt },
      css = { require("formatter.filetypes.css").prettier },
      scss = { require("formatter.filetypes.css").prettier },
      less = { require("formatter.filetypes.css").prettier },
      html = { require("formatter.filetypes.html").prettier },
      json = { require("formatter.filetypes.json").prettier },
      yaml = { require("formatter.filetypes.yaml").prettier },
      python = { require("formatter.filetypes.python").autopep8 },
      svelte = { require("formatter.filetypes.svelte").prettier },
      vue = { require("formatter.filetypes.javascript").prettier },
      graphql = { require("formatter.filetypes.graphql").prettier },
      markdown = { require("formatter.filetypes.markdown").prettier },
      angular = { require("formatter.filetypes.javascript").prettier },
      javascript = { require("formatter.filetypes.javascript").prettier },
      typescript = { require("formatter.filetypes.typescript").prettierd },
      javascriptreact = { require("formatter.filetypes.javascriptreact").prettierd },
      typescriptreact = { require("formatter.filetypes.typescriptreact").prettierd },
      ["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
    },
  }
end

vim.api.nvim_exec(
  [[
augroup FormatAutogroup
  autocmd!
  autocmd FileType cpp autocmd BufWritePost <buffer> FormatWrite
  autocmd FileType html autocmd BufWritePost <buffer> FormatWrite
  autocmd FileType css autocmd BufWritePost <buffer> FormatWrite
  autocmd FileType json autocmd BufWritePost <buffer> FormatWrite
  autocmd FileType javascript autocmd BufWritePost <buffer> FormatWrite
  autocmd FileType typescript autocmd BufWritePost <buffer> FormatWrite
  autocmd FileType typescriptreact autocmd BufWritePost <buffer> FormatWrite
  autocmd FileType svelte autocmd BufWritePost <buffer> FormatWrite
  autocmd FileType lua autocmd BufWritePost <buffer> FormatWrite
  autocmd FileType markdown autocmd BufWritePost <buffer> FormatWrite
  autocmd FileType rust autocmd BufWritePost <buffer> FormatWrite
augroup END
]],
  true
)

return M
