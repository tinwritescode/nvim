require("flutter-tools").setup {
  lsp = {
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      analysisExcludedFolders = { "<path-to-flutter-sdk-packages>" },
      renameFilesWithClasses = "prompt", -- "always"
      enableSnippets = true,
    },
  },
} -- use defaults
