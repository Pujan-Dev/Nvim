-- Optional Extra Plugins (Lightweight)
return {
    {
        'folke/trouble.nvim',
        cmd = 'Trouble',
        config = function()
            vim.keymap.set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<CR>', { noremap = true })
            vim.keymap.set('n', '<leader>xd', '<cmd>Trouble diagnostics toggle filter.buf=0<CR>', { noremap = true })
        end,
    },
}
