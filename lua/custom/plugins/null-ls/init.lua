local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt,
  -- b.formatting.prettier,
  b.formatting.prettierd,
  b.diagnostics.standardjs,

  -- Lua
  b.formatting.stylua,

  -- Prisma
  b.formatting.prismaFmt,

  -- Solidity
  b.diagnostics.solhint,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
    vim.cmd "nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.format {async = true}<CR>"

    -- format on save
    vim.cmd "autocmd BufWritePost <buffer> lua vim.lsp.buf.format {async = true}"
  end

  if client.server_capabilities.documentRangeFormattingProvider then
    vim.cmd "xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>"
  end

  -- if client.resolved_capabilities.document_formatting then
  --   vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
  -- end
end

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = on_attach,
}
