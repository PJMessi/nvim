local M = {}

M.setup = function()
  return {
    "folke/flash.nvim",
    event = "VeryLazy",
    modes = {
      char = {
        enabled = false
      }
    },
    -- stylua: ignore
    keys = {
      { "s",     mode = { "n" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
  }
end

return M
