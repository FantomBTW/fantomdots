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

vim.api.nvim_create_autocmd("TextYankPost", {
   group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
   callback = function()
   vim.highlight.on_yank({
      timeout = 100,         -- Время подсветки в мс
      on_visual = true,      -- Подсвечивать и в визуальном режиме
   })
  end,
})
