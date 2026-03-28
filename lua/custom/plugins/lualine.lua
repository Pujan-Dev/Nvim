-- AstroNvim-like statusline using lualine.nvim
-- https://github.com/nvim-lualine/lualine.nvim

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'tokyonight', -- Use a beautiful theme
        icons_enabled = vim.g.have_nerd_font or false,
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        globalstatus = true,
        disabled_filetypes = { 'NvimTree', 'neo-tree' },
      },
      sections = {
        lualine_a = { { 'mode', icon = '' } },
        lualine_b = {
          { 'branch', icon = '' },
          { 'diff', symbols = { added = ' ', modified = ' ', removed = ' ' } },
          { 'diagnostics', symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' } },
        },
        lualine_c = {
          { 'filename', file_status = true, path = 1, symbols = { modified = ' ●', readonly = ' ', unnamed = ' [No Name]' } },
        },
        lualine_x = {
          { 'encoding', icon = '' },
          { 'fileformat', icons_enabled = true, symbols = { unix = '', dos = '', mac = '' } },
          { 'filetype', icon_only = true },
        },
        lualine_y = { { 'progress', icon = '' } },
        lualine_z = { { 'location', icon = '' } },
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
      extensions = { 'neo-tree', 'quickfix', 'fugitive' },
    }
  end,
}
