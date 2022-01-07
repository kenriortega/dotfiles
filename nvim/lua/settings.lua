local o = vim.o
local wo = vim.wo

wo.number = true
o.clipboard = "unnamedplus"

o.splitright = true
o.hidden = true
o.guifont = "JetBrains Mono"
o.lazyredraw = true
o.shell = "/bin/sh"

-- OPTIONS --
local indent, width = 2, 100
vim.opt.colorcolumn = tostring(width)   -- Line length marker
vim.opt.cursorline = true               -- Highlight cursor line
vim.opt.list = true                     -- Show some invisible characters
vim.opt.splitbelow = true               -- Put new windows below current
vim.opt.splitright = true               -- Put new windows right of current
vim.opt.tabstop = indent                -- Number of spaces tabs count for
vim.opt.termguicolors = true            -- True color support
vim.opt.textwidth = width               -- Maximum width of text
vim.opt.updatetime = 100                -- Delay before swap file is saved
vim.opt.wrap = false                    -- Disable line wrap
vim.cmd 'colorscheme PaperColor'
vim.cmd 'set noswapfile'
--
--

