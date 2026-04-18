vim.pack.add({
   -- lsp
   {src = "https://github.com/neovim/nvim-lspconfig"},
   {src = "https://github.com/mason-org/mason.nvim"},
   {src = "https://github.com/mason-org/mason-lspconfig.nvim"},
   -- autocomplete
   {src = "https://github.com/saghen/blink.cmp"},
})

-- lsp highlight
require("mason").setup({})
require("mason-lspconfig").setup({
   automatic_enable = {
      "lua_ls",
      "clangd",
      "pyright",
      "typescript-language-server",
      "ts_ls",
      "bashls",
   },
   ensure_installed = {
      "lua_ls",
      "clangd",
      "pyright",
      -- "typescript-language-server",
      "ts_ls",
      "bashls",
   }
})

require("blink.cmp").setup({
   keymap = {
      preset = 'default',
      ['<Tab>'] = { 'accept', 'fallback' },
   },
   appearance = {
      nerd_font_variant = 'mono'
   },
   completion = {
      documentation = { auto_show = false }
   },
   sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
   },
   fuzzy = {
      implementation = "lua"
   }
})
