vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 5

require("lspconfig").tsserver.setup {}

-- require("tree-sitter-typescript").typescript.setup {}
-- require("tree-sitter-typescript").tsx.setup {}
