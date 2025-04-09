return {
    {
        'github/copilot.vim',
        config = function()
            vim.g.copilot_enabled = false
        end,

    },
    {
        'CopilotC-Nvim/CopilotChat.nvim',
        dependencies = {
            { 'github/copilot.vim' },                       -- or zbirenbaum/copilot.lua
            { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
        },
        build = 'make tiktoken',                            -- Only on MacOS or Linux
        opts = {
            -- See Configuration section for options
            sticky = {
                '@models Using claude-3.7-sonnet-thought',
                '#buffer',
            },
        },
        -- See Commands section for default commands if you want to lazy load on them
    },
}
