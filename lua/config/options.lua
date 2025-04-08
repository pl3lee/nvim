-- Search
vim.opt.smartcase = true  -- Enable smart-case search
vim.opt.ignorecase = true -- Ignore case in search

vim.opt.number = true          -- Show line numbers
vim.opt.relativenumber = true  -- Show relative line numbers
vim.opt.splitbelow = true      -- Open new splits below the current window
vim.opt.splitright = true      -- Open new splits to the right of the current window

vim.opt.signcolumn = "yes" -- Always show the sign column, even when empty
vim.opt.wrap = true        -- Enable line wrapping
vim.opt.linebreak = true   -- Softly wrap lines at word boundaries
vim.opt.tabstop = 4        -- Number of spaces a Tab key stroke occupies
vim.opt.softtabstop = 4    -- Number of spaces for inserting Tab
vim.opt.shiftwidth = 4     -- Number of spaces to use for autoindenting
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.smartindent = true -- Automatically insert indentation

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end
})
