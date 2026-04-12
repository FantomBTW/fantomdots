vim.opt.termguicolors = true

vim.opt.cursorline = true  -- Включить подсветку текущей строки

vim.api.nvim_set_hl(0, 'CursorLineNr', {
  fg = '#FFA500',
  bold = true,        -- жирный
  -- bg = '#333333',  -- если нужен фон
})

vim.api.nvim_set_hl(0, 'LineNr', {
	fg = '#CCCCCC',     -- не чисто белый, мягче для глаз
})

