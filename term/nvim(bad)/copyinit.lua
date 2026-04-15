local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }):wait()
  if out.code ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out.stderr, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)



require("lazy").setup({
  -- 2. Настройка Treesitter (Версия 1.0+)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local ts = require("nvim-treesitter")
      -- В 2026 году установка парсеров и базовых функций 
      -- часто делается напрямую через API плагина или vim.treesitter
      ts.setup({
        ensure_installed = { "lua", "vim", "vimdoc", "python", "typescript", "cpp", "c", "go"},
        auto_install = true,
        highlight = {
          enable = true,
        },
      })
    end,
  },
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})
