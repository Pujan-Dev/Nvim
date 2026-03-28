-- Git Integration Plugins (Non-duplicate)
return {
    {
        'tpope/vim-fugitive',
        cmd = { 'Git', 'Gvdiffsplit' },
    },
    {
        'f-person/git-blame.nvim',
        event = 'VeryLazy',
        config = function()
            require('gitblame').setup()
        end,
    },
}
