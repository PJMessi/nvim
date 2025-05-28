local M = {}

M.setup = function(_)
  return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = { left = ' ', right = ' ' },
          section_separators = { left = ' ', right = ' ' },
          disabled_filetypes = {
            statusline = { 'term' },
            winbar = { 'term' },
          },
          ignore_focus = {},
          always_divide_middle = true,
          always_show_tabline = true,
          globalstatus = false,
          refresh = {
            statusline = 100,
            tabline = 100,
            winbar = 100,
          }
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = {
            {
              'filename',
              cond = function()
                return vim.bo.buftype ~= 'terminal' -- Only show in non-terminal buffers
              end,
              path = 0,                             -- Use relative path (0 = just filename, 1 = relative path, 2 = absolute path)
              shorting_target = 40,                 -- Shortens path to leave 40 spaces in window for other components
              symbols = {
                modified = '[+]',                   -- Text to show when the file is modified
                readonly = '[-]',                   -- Text to show when the file is non-writable
                unnamed = '[No Name]',              -- Text to show for unnamed buffers
              },
            },
          },
          lualine_x = { 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = { 'oil', 'toggleterm', 'fugitive' }
      }
    end,
  }
end

return M
