local M = {}

M.setup = function()
  return {
    'folke/zen-mode.nvim',
    lazy = false,
    cmd = { "UndotreeToggle" },
    config = function()
      vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true, silent = true })
    end,
  }
end

return M
