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
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap('n', '<C-a>', 'ggVG', opts)
keymap('n', '<C-S-Left>', ':bprev <CR>', opts)
keymap('n','<C-S-Right>', ':bnext <CR>', opts)
keymap('n', '<C-c>', 'Vy', opts)
keymap('v', '<C-c>', 'y', opts)
keymap('n', '<C-v>', '"0p', opts)
keymap('n', '<C-z>', 'u', opts)
keymap('n', '<C-LeftMouse>', 'gd', opts)

vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
local set = vim.opt

set.number=true
set.relativenumber=true
