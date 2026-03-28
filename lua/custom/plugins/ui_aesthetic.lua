-- UI / Aesthetic Enhancement Plugins (Consolidated, no theme duplication)
return {
    {
        'rcarriga/nvim-notify',
        event = 'VeryLazy',
        config = function()
            require('notify').setup({
                background_colour = '#1f2335',
                stages = 'fade_in_slide_out',
                timeout = 2500,
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
