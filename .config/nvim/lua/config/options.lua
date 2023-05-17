-- :help options
vim.cmd("autocmd!")                                     -- remove ALL autocommands for the current group.

vim.scriptencoding = 'utf-8'                            -- encoding lines to specified encoding
vim.opt.encoding = 'utf-8'                              -- the encoding shown in the terminal
vim.opt.fileencoding = 'utf-8'                          -- the encoding written to a file

vim.wo.number = true                                    -- sets numbered lines to true in current window

vim.opt.title = true                                    -- print file title in window header
vim.opt.autoindent = true                               -- auto indent line as previous line
vim.opt.smartindent = true                              -- make indenting smarter again
vim.opt.hlsearch = true                                 -- highlight all matches on previous search pattern
vim.opt.backup = false                                  -- creates a backup file
vim.opt.showcmd = true
vim.opt.cmdheight = 1                                   -- more space in the neovim command line for displaying messages
vim.opt.expandtab = true                                -- convert tabs to spaces
vim.opt.scrolloff = 8                                   -- lines before and after cursor
vim.opt.shell = 'fish'                                  -- default shell for commands
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }     -- skip directories for backup
vim.opt.inccommand = 'split'                            -- split :%s/find/change command to separate windows
vim.opt.ignorecase = true                               -- ignore case in search patterns
vim.opt.smartcase = true                                -- smart case
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2                                  -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                                     -- insert 2 spaces for a tab
vim.opt.wrap = false                                    -- display lines as one long line
vim.opt.path:append { '**' }                            -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }
vim.opt.clipboard = "unnamedplus"                       -- allows neovim to access the system clipboard
vim.opt.relativenumber = true                           -- set relative numbered lines
vim.opt.numberwidth = 4                                 -- set number column width to 2 {default 4}

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }

