-- Debugging / DAP Plugins (Optional - Lazy loaded only on demand for minimal startup)
return {
  {
    'mfussenegger/nvim-dap',
    cmd = { 'DapContinue', 'DapToggleBreakpoint' },
    lazy = true,
    dependencies = {
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
      'nvim-neotest/nvim-nio',
    },
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'
      dapui.setup()

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set('n', '<F5>', dap.continue, { noremap = true })
      vim.keymap.set('n', '<F10>', dap.step_over, { noremap = true })
      vim.keymap.set('n', '<F11>', dap.step_into, { noremap = true })
      vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { noremap = true })
    end,
  },

  {
    'rcarriga/nvim-dap-ui',
    lazy = true,
    dependencies = { 'mfussenegger/nvim-dap' },
  },
  {
    'theHamsta/nvim-dap-virtual-text',
    lazy = true,
  },
}
