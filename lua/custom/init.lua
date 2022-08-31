vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 2

require("lspconfig").tsserver.setup {}

require("tree-sitter-typescript").typescript.setup {}
require("tree-sitter-typescript").tsx.setup {}

vim.cmd [[
  augroup plugins
    autocmd!
    autocmd BufWritePost plugins.lua init.lua luafile plugins.lua
  augroup END
]]
