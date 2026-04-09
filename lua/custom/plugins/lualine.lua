-- AstroNvim-like statusline using lualine.nvim
-- https://github.com/nvim-lualine/lualine.nvim

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'tokyonight',
        icons_enabled = vim.g.have_nerd_font or false,
        section_separators = '',
        component_separators = '',
        globalstatus = true,
        disabled_filetypes = { 'NvimTree', 'neo-tree' },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = {
          { 'filename', file_status = true, path = 1, symbols = { modified = ' ●', readonly = ' ', unnamed = ' [No Name]' } },
        },
        lualine_x = { 'diagnostics', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { 'neo-tree', 'quickfix', 'fugitive', 'nvim-dap-ui' },
    }
  end,
}
