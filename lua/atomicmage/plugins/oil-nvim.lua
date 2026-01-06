local M = {}

M.setup = function()
  return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      keymaps = {
        -- ["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
        ["<C-h>"] = false,
        -- ["<C-l>"] = "actions.refresh",
        ["<C-l>"] = false,
      },
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function()
      require("oil").setup({
        keymaps = {
          -- ["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
          ["<C-h>"] = false,
          -- ["<C-l>"] = "actions.refresh",
          ["<C-l>"] = false,
        },
        view_options = {
          show_hidden = true, -- Show hidden files by default
        },
      })
    end,
  }
end

return M;
