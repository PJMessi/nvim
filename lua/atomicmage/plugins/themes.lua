local M = {}

local function SetupVesper(transparent)
  return {
    'datsfilipe/vesper.nvim',
    -- dir = "/Users/prajwalshrestha/projects/personal/nvim/vesper.nvim/",
    lazy = false,
    priority = 1000,
    config = function()
      local colors = require("vesper.colors")
      require('vesper').setup({
        transparent = transparent, -- Boolean: Sets the background to transparent
        italics = {
          comments = false,        -- Boolean: Italicizes comments
          keywords = false,        -- Boolean: Italicizes keywords
          functions = false,       -- Boolean: Italicizes functions
          strings = false,         -- Boolean: Italicizes strings
          variables = false,       -- Boolean: Italicizes variables
        },
        overrides = {},            -- A dictionary of group names, can be a function returning a dictionary or a table.
        palette_overrides = {}
      })
      vim.cmd.colorscheme('vesper')
    end
  }
end

local function SetGruvBox()
  return {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = false
      vim.g.gruvbox_material_transparent_background = true
      vim.g.gruvbox_material_disable_italic_comment = false
      vim.g.gruvbox_material_foreground = 'mix'
      vim.cmd.colorscheme('gruvbox-material')
    end
  }
end

local function SetRosePine(enableTransparency)
  return {
    'rose-pine/neovim',
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "main",      -- auto, main, dawn, or dawn
        dark_variant = "main", -- main, dawn, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true,        -- Handle deprecated options automatically
        },

        styles = {
          bold = false,
          italic = false,
          transparency = enableTransparency,
        },

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",

          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",

          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",

          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
        },

        palette = {
          main = {
            -- love = "#ebbcba"
          },
          moon = {
          }
        },

        highlight_groups = {
          -- Comment = { fg = "foam" },
          -- VertSplit = { fg = "muted", bg = "muted" },
          Comment = { italic = false },
          -- Type = { bold = true },
          -- ["@constant"] = { bold = true },
          -- ["@type"] = { bold = true },
        },

        before_highlight = function(group, highlight, palette)
          -- Disable all undercurls
          -- if highlight.undercurl then
          --     highlight.undercurl = false
          -- end
          --
          -- Change palette colour
          -- if highlight.fg == palette.pine then
          --     highlight.fg = palette.foam
          -- end
        end,
      })

      -- vim.cmd("colorscheme rose-pine")
      vim.cmd("colorscheme rose-pine-main")
      -- vim.cmd("colorscheme rose-pine-moon")
      -- vim.cmd("colorscheme rose-pine-dawn")
    end,

  }
end

local function setKanagawaPaper(enableTransparency)
  return {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require('kanagawa-paper').setup({
        undercurl = true,
        transparent = enableTransparency,
        gutter = false,
        dimInactive = true, -- disabled when transparent
        terminalColors = true,
        commentStyle = { italic = true },
        functionStyle = { italic = false },
        keywordStyle = { italic = false, bold = false },
        statementStyle = { italic = false, bold = false },
        typeStyle = { italic = false },
        colors = { theme = {}, palette = {} }, -- override default palette and theme colors
        overrides = function()                 -- override highlight groups
          return {}
        end,
      })

      -- setup must be called before loading
      vim.cmd("colorscheme kanagawa-paper")
    end
  }
end

local function SetLackluster()
  return {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      require("lackluster").setup({
        -- You can overwrite the following syntax colors by setting them to one of...
        --   1) a hexcode like "#a1b2c3" for a custom color.
        --   2) "default" or nil will just use whatever lackluster's default is.
        tweak_syntax = {
          string = "default",
          -- string = "#a1b2c3", -- custom hexcode
          -- string = color.green, -- lackluster color
          string_escape = "default",
          comment = "default",
          builtin = "default", -- builtin modules and functions
          type = "default",
          keyword = "default",
          keyword_return = "default",
          keyword_exception = "default",
        },
        -- You can overwrite the following background colors by setting them to one of...
        --   1) a hexcode like "#a1b2c3" for a custom color
        --   2) "none" for transparency
        --   3) "default" or nil will just use whatever lackluster's default is.
        tweak_background = {
          -- normal = 'default', -- main background
          normal = 'none', -- transparent
          -- normal = '#a1b2c3',    -- hexcode
          -- normal = color.green,    -- lackluster color
          telescope = 'default', -- telescope
          menu = 'default',      -- nvim_cmp, wildmenu ... (bad idea to transparent)
          popup = 'default',     -- lazy, mason, whichkey ... (bad idea to transparent)
        },
      })


      -- vim.cmd.colorscheme("lackluster")
      -- vim.cmd.colorscheme("lackluster-hack") -- my favorite
      vim.cmd.colorscheme("lackluster-mint")
    end,
  }
end

local function SetVauge(enableTransparency)
  return {
    'vague2k/vague.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require("vague").setup({
        {
          transparent = enableTransparency,
          style = {
            -- "none" is the same thing as default. But "italic" and "bold" are also valid options
            boolean = "none",
            number = "none",
            float = "none",
            error = "none",
            comments = "italic",
            conditionals = "none",
            functions = "none",
            headings = "bold",
            operators = "none",
            strings = "italic",
            variables = "none",

            -- keywords
            keywords = "none",
            keyword_return = "none",
            keywords_loop = "none",
            keywords_label = "none",
            keywords_exception = "none",

            -- builtin
            builtin_constants = "none",
            builtin_functions = "none",
            builtin_types = "none",
            builtin_variables = "none",
          },
          -- Override colors
          colors = {
            bg = "#18191a",
            fg = "#cdcdcd",
            floatBorder = "#878787",
            line = "#282830",
            comment = "#646477",
            builtin = "#bad1ce",
            func = "#be8c8c",
            string = "#deb896",
            number = "#d2a374",
            property = "#c7c7d4",
            constant = "#b4b4ce",
            parameter = "#b9a3ba",
            visual = "#363738",
            error = "#d2788c",
            warning = "#e6be8c",
            hint = "#8ca0dc",
            operator = "#96a3b2",
            keyword = "#7894ab",
            type = "#a1b3b9",
            search = "#465362",
            plus = "#8faf77",
            delta = "#e6be8c",
          },
        }
      })

      vim.cmd.colorscheme 'vague'
    end,
  }
end

local function SetZenbones(enableTransparency)
  return {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
      -- vim.g.zenbones_darken_comments = 45
      vim.cmd.colorscheme('neobones')
    end
  }
end

local function SetDarkVoid()
  return {
    'aliqyan-21/darkvoid.nvim',
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
      require('darkvoid').setup({
        transparent = true,
        glow = false,
        show_end_of_buffer = true,

        colors = {
          fg = "#c0c0c0",
          bg = "#1c1c1c",
          cursor = "#bdfe58",
          line_nr = "#404040",
          visual = "#303030",
          comment = "#585858",
          string = "#d1d1d1",
          func = "#e1e1e1",
          kw = "#f1f1f1",
          identifier = "#b1b1b1",
          type = "#a1a1a1",
          type_builtin = "#c5c5c5", -- current
          -- type_builtin = "#8cf8f7", -- glowy blue old (was present by default before type_builtin was introduced added here for people who may like it)
          search_highlight = "#1bfd9c",
          operator = "#1bfd9c",
          bracket = "#e6e6e6",
          preprocessor = "#4b8902",
          bool = "#66b2b2",
          constant = "#b2d8d8",

          -- enable or disable specific plugin highlights
          plugins = {
            gitsigns = true,
            nvim_cmp = true,
            treesitter = true,
            nvimtree = true,
            telescope = true,
            lualine = true,
            bufferline = true,
            oil = true,
            whichkey = true,
            nvim_notify = true,
          },

          -- gitsigns colors
          added = "#baffc9",
          changed = "#ffffba",
          removed = "#ffb3ba",

          -- Pmenu colors
          pmenu_bg = "#1c1c1c",
          pmenu_sel_bg = "#1bfd9c",
          pmenu_fg = "#c0c0c0",

          -- EndOfBuffer color
          eob = "#3c3c3c",

          -- Telescope specific colors
          border = "#585858",
          title = "#bdfe58",

          -- bufferline specific colors
          bufferline_selection = "#1bfd9c",

          -- LSP diagnostics colors
          error = "#dea6a0",
          warning = "#d6efd8",
          hint = "#bedc74",
          info = "#7fa1c3",
        },
      })
    end
  }
end

local function SetCatppuccin(transparent)
  return {
    'catppuccin/nvim',
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
      require('catppuccin').setup({
        transparent_background = transparent,
        no_italic = true
      })

      vim.cmd('colorscheme catppuccin-mocha')
    end
  }
end

local function SetTokioNight(transparent)
  return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
      require('tokyonight').setup({
        transparent_background = transparent
      })

      vim.cmd('colorscheme tokyonight-moon')
    end
  }
end

local function SetBase16()
  return {
    'RRethy/base16-nvim',
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    config = function()
      require('base16-colorscheme').with_config({
        telescope = false,
        indentblankline = true,
        notify = true,
        ts_rainbow = true,
        cmp = true,
        illuminate = true,
        dapui = true,
      })

      -- vim.cmd('colorscheme base16-black-metal-gorgoroth')
      vim.cmd('colorscheme base16-vesper')
      -- base16-rose-pine
      -- base16-rose-pine-dawn
      -- base16-rose-pine-moon
      --
      -- vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
      -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    end
  }
end

local function setTheme(name)
  if name == "gruvbox" then
    return SetGruvBox()
  elseif name == "vague" then
    return SetVauge(true)
  elseif name == "kanagawapaper" then
    return setKanagawaPaper(true)
  elseif name == "lackluster" then
    return SetLackluster()
  elseif name == "zenbones" then
    return SetZenbones(true)
  elseif name == "darkvoid" then
    return SetDarkVoid()
  elseif name == "base16" then
    return SetBase16()
  elseif name == "vesper" then
    return SetupVesper(false)
  elseif name == "tokionight" then
    return SetTokioNight(false)
  elseif name == "catppuccin" then
    return SetCatppuccin(true)
  end
  return SetRosePine(false)
end

M.setup = function(_)
  return setTheme("rosepine")
end

return M
