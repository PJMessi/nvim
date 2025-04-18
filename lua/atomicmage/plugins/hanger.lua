local M = {}

M.setup = function()
  return {
    -- 'https://github.com/PJMessi/hanger',
    dir = "/Users/prajwalshrestha/projects/personal/nvim/hanger",
    lazy = false,
    cmd = { "RunSingleTest", "RerunSingleTest", "RunFileTests", "ShowRunnables" },
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("hanger").setup({
        output = "zellij",       -- options: 'term' / 'zellij'
        floating_pane = true, -- only valid for 'zellij' 'output'
      })

      vim.api.nvim_set_keymap('n', '<leader>rt', ':RunSingleTest<CR>',
        { desc = '[R]un [T]est', noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>rrt', ':RerunTest<CR>',
        { desc = '[R]e [R]un [T]est', noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>rft', ':RunFileTests<CR>',
        { desc = '[R]un [F]ile [T]ests', noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>sr', ':ShowRunnables<CR>',
        { desc = '[S]how [R]unnables', noremap = true, silent = true })
    end,
  }
end

return M
