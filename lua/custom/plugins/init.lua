-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Return all plugin modules
local plugins = {}

-- Merge all plugin categories
local plugin_modules = {
  require('custom.plugins.core_productivity'),
  require('custom.plugins.navigation'),
  require('custom.plugins.syntax_highlighting'),
  require('custom.plugins.lsp_completion'),
  require('custom.plugins.git_integration'),
  require('custom.plugins.debugging'),
  require('custom.plugins.ui_aesthetic'),
  require('custom.plugins.session_management'),
  require('custom.plugins.extras'),
}

for _, module in ipairs(plugin_modules) do
  if type(module) == 'table' then
    for _, plugin in ipairs(module) do
      table.insert(plugins, plugin)
    end
  end
end

return plugins
