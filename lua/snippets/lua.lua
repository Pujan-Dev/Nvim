local ls = require 'luasnip'
local extras = require 'luasnip.extras'

local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local rep = extras.rep

ls.add_snippets('lua', {
  s('req', {
    t('local '),
    i(1, 'mod'),
    t(" = require('"),
    i(2, 'module.name'),
    t("')"),
  }),
  s('fun', {
    t({ '---@param ' }),
    i(1, 'arg'),
    t(' '),
    i(2, 'any'),
    t({ '', '---@return ' }),
    i(3, 'any'),
    t({ '', 'local function ' }),
    i(4, 'name'),
    t('('),
    rep(1),
    t({ ')', '  ' }),
    i(0),
    t({ '', 'end' }),
  }),
  s('docs', {
    t({ '---@class ' }),
    i(1, 'MyType'),
    t({ '', '---@field ' }),
    i(2, 'field'),
    t(' '),
    i(3, 'type'),
    t({ '', '---@param ' }),
    i(4, 'arg'),
    t(' '),
    i(5, 'type'),
    t({ '', '---@return ' }),
    i(6, 'type'),
  }),
  s('mod', {
    t({ 'local M = {}', '', 'function M.setup()', '  ' }),
    i(0),
    t({ '', 'end', '', 'return M' }),
  }),
})
