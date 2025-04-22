-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, for help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '› ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- atomicmage, ThePrimegan
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.colorcolumn = "100"

-- atomicmage, Bordered corners
-- https://vi.stackexchange.com/questions/39074/user-borders-around-lsp-floating-windows
-- local _border = "rounded"
-- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
--   vim.lsp.handlers.hover, {
--     border = _border
--   }
-- )
-- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
--   vim.lsp.handlers.signature_help, {
--     border = _border
--   }
-- )

-- atomicmage
vim.diagnostic.config {
  virtual_text = {
    current_line = true
  }
}

-- atomicmage: set cursor to block mode on all modes.
-- vim.opt.guicursor = "n-v-i-c:block-Cursor"

-- What this does is, for visual mode, the cursor block is white, and when i enter the insert mode, it defaults to the original cursor color (set in the terminal)
vim.cmd [[
  " Use terminal escape sequences to change cursor color based on mode
  let &t_SI = "\<Esc>]12;#00ff00\x7" " Insert mode - green
  let &t_SR = "\<Esc>]12;#d70000\x7" " Replace mode - red
  let &t_EI = "\<Esc>]12;#5f87af\x7" " Normal mode - blue

  " Still set the highlight groups (in case your terminal supports them)
  highlight Cursor guibg=#5f87af ctermbg=67
  highlight iCursor guibg=#00ff00 ctermbg=46
  highlight rCursor guibg=#d70000 ctermbg=124

  set guicursor=n-v-c:block-Cursor/lCursor
                \,i-ci-ve:block-iCursor
                \,r-cr:block-rCursor
                \,o:hor50-Cursor/lCursor
                \,sm:block-iCursor
                \,a:blinkwait1000-blinkon500-blinkoff250
]]
