-- Leader key (set first, before any mappings use it)
vim.g.mapleader = " "

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation: 4 spaces, never tabs
vim.opt.tabstop = 4       -- a tab character displays as 4 columns
vim.opt.shiftwidth = 4    -- >> and auto-indent uses 4 spaces
vim.opt.expandtab = true  -- Tab key inserts spaces
vim.opt.smartindent = true


-- Search
vim.opt.ignorecase = true -- case-insensitive seach...
vim.opt.smartcase = true  -- ...unless you type a capital letter
vim.opt.hlsearch = false  -- don't leave matches highlighted after searching
vim.opt.incsearch = true  -- jump to matches as you type


-- Look and feel
vim.opt.termguicolors = true  -- full colour (needed for most themes)
vim.opt.cursorline = true     -- highlight the line the cursor is on
vim.opt.signcolumn = "yes"    -- reserve the gutter so text doesn't shift around
vim.opt.scrolloff = 8         -- keep 8 lines visible above/below the cursor
vim.opt.wrap = false


-- Behaviour
vim.opt.clipboard = "unnamedplus"  -- yank/paste uses the system clipboard
vim.opt.undofile = true            -- undo history survives closing the file
vim.opt.splitright = true          -- :vsplit opens to the right
vim.opt.splitbelow = true          -- :split opens below
vim.opt.updatetime = 250           -- snappier feedback (default is 4s)


-- A few handy mappings
vim.keymap.set("n", "<leader>w", ":w<CR>")        -- Space+w to save
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>")   -- Esc clears search highlights
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")      -- move selected lines down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")      -- move selected lines up


-- Colour scheme
vim.cmd.colorscheme("retrobox")
