vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.clipboard = "unnamedplus" -- System clipboard

vim.opt.smartcase = true          -- Enable smart-case search: if search pattern contains uppercase, then search becomes case-sensitive
vim.opt.ignorecase = true         -- Ignore case in search

vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Show relative line numbers
vim.opt.splitbelow = true         -- Open new splits below the current window
vim.opt.splitright = true         -- Open new splits to the right of the current window

vim.opt.signcolumn = "yes"        -- Always show the sign column, even when empty
vim.opt.wrap = true               -- Enable line wrapping
vim.opt.linebreak = true          -- Softly wrap lines at word boundaries
vim.opt.tabstop = 4               -- Number of spaces a Tab key stroke occupies
vim.opt.softtabstop = 4           -- Number of spaces for inserting Tab
vim.opt.shiftwidth = 4            -- Number of spaces to use for autoindenting
vim.opt.expandtab = true          -- Use spaces instead of tabs
vim.opt.smartindent = true        -- Automatically insert indentation

vim.opt.showmode = false          -- Dont show mode because status line already shows it
vim.g.pyindent_open_paren = 0     -- Disable extra indent level after open parenthesis in python
vim.opt.undofile = true           -- Enable persistent undo
vim.opt.inccommand = "split"      -- Show substitution live
vim.opt.cursorline = true         -- Highlight cursor line
vim.opt.scrolloff = 10            -- Keep at least 10 lines visible above and below cursor when scrolling

vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Clear highlighted search on escape

vim.keymap.set('n', '<C-d>', '<C-d>zz')             -- Recenter cursor for half page scroll
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', 'n', 'nzzzv') -- Recenter cursor for search
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Paste without replacing buffer content' })

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end
})
