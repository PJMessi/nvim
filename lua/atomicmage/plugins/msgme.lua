local M = {}

M.setup = function()
  return {
    dir = "/Users/prajwalshrestha/projects/personal/go/msgme.nvim",
    lazy = false,
    dependencies = {
      "https://github.com/nvim-lua/plenary.nvim",
      "https://github.com/lunarmodules/luasocket"
    },
    config = function()
    end,
  }
end

return M
