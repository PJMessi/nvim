local M = {}

M.setup = function()
  return {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = false,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "/Users/prajwalshrestha/Library/Mobile Documents/iCloud~md~obsidian/Documents/iCloud vault",
        },
        {
          name = "work",
          path = "/Users/prajwalshrestha/Library/Mobile Documents/iCloud~md~obsidian/Documents/work",
        },
      },
    },
  }
end

return M
