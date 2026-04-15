vim.pack.add({
   -- lsp
   {src = "https://github.com/neovim/nvim-lspconfig"},
   {src = "https://github.com/mason-org/mason.nvim"},
   {src = "https://github.com/mason-org/mason-lspconfig.nvim"},
   -- autocomplete
   -- {src = "https://github.com/"},
})

require("mason").setup({})
require("mason-lspconfig").setup({
   automatic_enable = {
      "lua_ls",
      "clangd",
      "pyright",
      "typescript-language-server",
      "ts_ls",
      "bash-language-server",
   }
})

