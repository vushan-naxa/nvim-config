require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.indentline"
require "user.alpha"
require "user.whichkey"
require "user.autocommands"
-- vim.cmd([[
-- au FocusLost * :wa
-- set autowriteall
-- ]])
vim.g['auto_save'] = 1
vim.api.nvim_set_keymap(
  'n',
  '<C-a>',
  'ggVG',
  { noremap = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<C-S-Left>',
  ':bprev <CR>',
  { noremap = true }
)
vim.api.nvim_set_keymap(
  'n',
  '<C-S-Right>',
  ':bnext <CR>',
  { noremap = true }
)

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
