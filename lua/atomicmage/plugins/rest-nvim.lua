local M = {}

M.setup = function()
  return {
    -- "rest-nvim/rest.nvim",
    dir = "/Users/prajwalshrestha/projects/personal/nvim/rest.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        table.insert(opts.ensure_installed, "http")
      end,
    },
    config = function()
    end
  }
end

return M
