-- Git Integration Plugins (Non-duplicate, minimal)
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
            vim.g.gitblame_enabled = 0
            require('gitblame').setup {
                enabled = false,
                message_template = ' <summary> • <date> • <author>',
                date_format = '%Y-%m-%d %H:%M',
            }

            vim.keymap.set('n', '<leader>gb', '<cmd>GitBlameToggle<CR>', { desc = '[G]it [B]lame toggle', silent = true })
            vim.keymap.set('n', '<leader>go', '<cmd>GitBlameOpenCommitURL<CR>', { desc = '[G]it [O]pen commit URL', silent = true })
        end,
    },
}
