local M = {}

M.setup = function()
  return {
    -- 'https://github.com/PJMessi/maked.nvim',
    dir = "/Users/prajwalshrestha/projects/personal/nvim/maked",
    lazy = true,
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- Telescope requires plenary
    },
    cmd = { "Maked" },
    config = function()
      vim.api.nvim_set_keymap('n', '<leader>mk', ':Maked<CR>', { noremap = true, silent = true })
    end,
  }
end

return M
