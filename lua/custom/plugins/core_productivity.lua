-- Core Productivity / Editing Plugins (Trimmed)
return {
    {
        'numToStr/Comment.nvim',
        event = 'VeryLazy',
        config = function()
            require('Comment').setup()
        end,
    },
    {
        'tpope/vim-repeat',
        event = 'VeryLazy',
    },
    {
        'windwp/nvim-ts-autotag',
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
        config = function()
            require('nvim-ts-autotag').setup({
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = false,
                },
            })
        end,
    },
}
