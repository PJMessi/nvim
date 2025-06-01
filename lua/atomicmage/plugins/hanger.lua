local M = {}

M.setup = function()
  return {
    -- 'https://github.com/pjmessi/hanger',
    dir = "/Users/prajwalshrestha/projects/personal/nvim/hanger",
    lazy = false,
    cmd = { "RunTest", "ReRunTest", "RunAllTests", "ShowTests" },
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("hanger").setup({
        -- options: 'term' / 'zellij'
        output = "zellij",
        -- only valid for 'zellij' 'output'
        floating_pane = true,
      })

      vim.api.nvim_set_keymap('n', '<leader>rt', ':RunTest<CR>',
        { desc = '[R]un [T]est', noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>rrt', ':ReRunTest<CR>',
        { desc = '[R]e [R]un [T]est', noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>rat', ':RunAllTests<CR>',
        { desc = "[R]un [A]ll [T]ests", noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>st', ':ShowTests<CR>',
        { desc = '[S]how [T]ests', noremap = true, silent = true })
    end,
  }
end

return M
