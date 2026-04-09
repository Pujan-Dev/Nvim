-- UI / Aesthetic Enhancement Plugins (Consolidated, no theme duplication)
return {
    {
        'rcarriga/nvim-notify',
        event = 'VeryLazy',
        config = function()
            require('notify').setup({
                background_colour = 'NormalFloat',
                render = 'minimal',
                stages = 'fade',
                timeout = 2000,
            })
            vim.notify = require('notify')
        end,
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        event = { 'BufReadPre', 'BufNewFile' },
        main = 'ibl',
        config = function()
            require('ibl').setup()
        end,
    },
}
