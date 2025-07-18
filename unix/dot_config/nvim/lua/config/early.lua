-- This configuration module runs before lazy.nvim is loaded. It is worth noting
-- that configuration has to be set before loading lazy.nvim. This module sets
-- the vim options provided by Neovim.

-- Disable Neovim's built-in file explorer (netrw). This must be set before
-- lazy.vim is loaded.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Bind space character to leader. In Neovim, "leader" serves as a special key
-- used as a prefix for custom keyboard mappings.
-- By default, the leader key is backslash, but the Neovim community prefers
-- space to be leader more.
vim.g.mapleader = ' '

-- The "leader" is used across all files, while "localleader" is used for
-- specific filetypes and contexts.
-- By default, the local leader key is also backslash, but again, the Neovim
-- community usually just set it to space.
vim.g.maplocalleader = ' '

-- Use spaces instead of tabs. When set to true, multiple spaces would be typed
-- when users press the tab key.
vim.opt.expandtab = true

-- The number of spaces used to replace a tab (also known as tab width). It is
-- subject to reconfigure based on the style conventions of specific languages.
vim.opt.softtabstop = 2

-- The number of spaces are indented with "<<", ">>", "autoindent", etc.
vim.opt.shiftwidth = 2

-- The number of spaces used to display a real tab character. The IDE will
-- replace tab keys to the specific number of spaces on GUI.
vim.opt.tabstop = 2

-- Apply cursor line highlight. When set to true, the number of line that is
-- being edited will use different highlight group (CursorLineNr).
vim.opt.cursorline = true

-- Replace the tilde with space in the status column.
vim.opt.fillchars:append { eob = ' ' }

-- Copy yanked contents to the system clipboard (if supported).
vim.opt.clipboard = 'unnamedplus'

-- Set the style of the cursor.
---@diagnostic disable-next-line: missing-fields
vim.opt.guicursor = {
  'n-v-c:block-Cursor',
  'i-ci:ver25-CursorInsert',
  'r-cr:hor20',
  'o:hor50',
  --'a:blinkwait500-blinkon600-blinkoff400',
}

-- Set the diagnostic settings.
vim.diagnostic.config {
  virtual_text = true,
  update_in_insert = true,
}

-- Set the terminal shell interpreter.
vim.o.shell = '/bin/zsh'

-- Speed up startup time by caching Lua modules. (Since Neovim 0.9)
vim.loader.enable()

vim.o.number = true
vim.o.relativenumber = true
vim.o.statuscolumn =
  [[%s%=%{v:virtnum == 0 ? (v:relnum ? v:relnum : v:lnum) : ''}   ]]
vim.o.signcolumn = 'yes'
