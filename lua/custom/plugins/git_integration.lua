-- Git Integration Plugins (Non-duplicate)
return {
    {
        'tpope/vim-fugitive',
        cmd = { 'Git', 'Gvdiffsplit' },
    },
    {
        'NeogitOrg/neogit',
        cmd = 'Neogit',
        keys = {
            { '<leader>gg', '<cmd>Neogit<CR>', desc = 'Open Neogit' },
        },
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'f-person/git-blame.nvim',
        event = 'VeryLazy',
        config = function()
            require('gitblame').setup()
        end,
    },
}
