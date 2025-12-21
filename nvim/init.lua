local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

vim.call('plug#', 'nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

vim.call('plug#', 'sahlte/timed-highlight.nvim')
vim.call('plug#', 'max397574/better-escape.nvim')
--vim.call('plug#', 'girishji/vimcomplete')
vim.call('plug#', 'nvim-lualine/lualine.nvim')

vim.call('plug#', 'folke/tokyonight.nvim')
vim.call('plug#', 'morhetz/gruvbox')
vim.call('plug#', 'catppuccin/nvim')

vim.call('plug#end')

require"comm"



-- Настройка Treesitter
vim.cmd('syntax enable')
vim.cmd('set background=dark')

vim.cmd('colorscheme tokyonight')
--vim.cmd('colorscheme catppuccin')
--vim.cmd('colorscheme gruvbox')

require('tokyonight').setup({
	style = "moon", -- storm day moon night
})

--прозрачность, наврное
vim.cmd('hi Normal guibg=NONE ctermbg=NONE')

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"python","go","css","c","cpp"}, -- Установить поддерживаемые языки
  highlight = {
    enable = true,
  },
}



--подсветка
require("timed-highlight").setup({
	highlight_timeout_ms = 2000
})

--betterescape
require"better_escape".setup{
	timeout = 500 ,
   	shortcut = 'jj'  -- замените на нужную вам комбинацию
}

require('lualine').setup {
    options = {
        theme = 'auto', -- или любой другой подходящий вам
    }
}


