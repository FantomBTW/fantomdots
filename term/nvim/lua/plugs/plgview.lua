vim.pack.add({
   -- theme
   {src = "https://github.com/folke/tokyonight.nvim"},
   {src = "https://github.com/catppuccin/nvim", name = "catppuccin"},
})

vim.cmd.colorscheme "catppuccin-nvim"

require("lualine").setup({})
