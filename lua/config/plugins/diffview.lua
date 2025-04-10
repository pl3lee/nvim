return {
    {
        'sindrets/diffview.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        config = function()
            require("diffview").setup {}
            vim.keymap.set("n", "<leader>gdo", function() vim.cmd("DiffviewOpen") end)
            vim.keymap.set("n", "<leader>gdc", function() vim.cmd("DiffviewClose") end)
            vim.keymap.set("n", "<leader>gdh", function() vim.cmd("DiffviewFileHistory %") end)
        end
    }
}
