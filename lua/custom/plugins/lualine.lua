-- Feature-rich and clean statusline using lualine.nvim
-- https://github.com/nvim-lualine/lualine.nvim

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'tokyonight',
        icons_enabled = vim.g.have_nerd_font or false,
        section_separators = { left = '', right = '' },
        component_separators = { left = '│', right = '│' },
        globalstatus = true,
        disabled_filetypes = { 'NvimTree', 'neo-tree', 'lazy' },
        refresh = {
          statusline = 250,
        },
      },
      sections = {
        lualine_a = {
          {
            'mode',
            fmt = function(str)
              return str:sub(1, 1)
            end,
          },
        },
        lualine_b = {
          { 'branch', icon = '' },
          { 'diff', symbols = { added = '+', modified = '~', removed = '-' } },
        },
        lualine_c = {
          { 'filename', file_status = true, path = 1, symbols = { modified = ' ●', readonly = ' ', unnamed = ' [No Name]' } },
          { 'filesize' },
        },
        lualine_x = {
          { 'diagnostics', sections = { 'error', 'warn', 'info', 'hint' }, symbols = { error = 'E', warn = 'W', info = 'I', hint = 'H' } },
          { 'encoding', cond = function() return vim.bo.fileencoding ~= '' and vim.bo.fileencoding ~= 'utf-8' end },
          { 'fileformat', cond = function() return vim.bo.fileformat ~= 'unix' end },
          { 'filetype', icon_only = false },
        },
        lualine_y = {
          { 'progress' },
          { 'searchcount', maxcount = 99, timeout = 120 },
        },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', path = 1 }, { 'filesize' } },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { 'neo-tree', 'quickfix', 'fugitive', 'nvim-dap-ui' },
    }
  end,
}
