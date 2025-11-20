local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- keymap function
local keymap = vim.api.nvim_set_keymap

-- jumping between windows with ctrl + direction
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- resize windows with ctrl + arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
-- same for terminal mode
keymap("t", "<C-Up>", "<C-\\><C-n>:resize -2<CR>", opts)
keymap("t", "<C-Down>", "<C-\\><C-n>:resize +2<CR>", opts)
keymap("t", "<C-Left>", "<C-\\><C-n>:vertical resize -2<CR>", opts)
keymap("t", "<C-Right>", "<C-\\><C-n>:vertical resize +2<CR>", opts)

-- open neotree
keymap("n", "<leader>e", ":NvimTreeOpen<cr>", { desc = 'Open NeoTree' }) 

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- tabs
-- Goto buffer in position...
keymap("n", "<A-1>", ":BufferGoto 1<CR>", opts)
keymap("n", "<A-2>", ":BufferGoto 2<CR>", opts)
keymap("n", "<A-3>", ":BufferGoto 3<CR>", opts)
keymap("n", "<A-4>", ":BufferGoto 4<CR>", opts)
keymap("n", "<A-5>", ":BufferGoto 5<CR>", opts)
keymap("n", "<A-6>", ":BufferGoto 6<CR>", opts)
keymap("n", "<A-7>", ":BufferGoto 7<CR>", opts)
keymap("n", "<A-8>", ":BufferGoto 8<CR>", opts)
keymap("n", "<A-9>", ":BufferGoto 9<CR>", opts)
keymap("n", "<A-0>", ":BufferLast<CR>", opts)

-- Move to previous/next
keymap('n', '<A-->', ':BufferPrevious<CR>', opts)
keymap('n', '<A-=>', ':BufferNext<CR>', opts)

-- Re-order to previous/next
keymap('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
keymap('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

-- Close buffer
keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

-- Toggle terminal window
keymap("n", "<A-t>", ":ToggleTerm<CR>", opts)
keymap("t", "<A-t>", "<C-\\><C-n>:ToggleTerm<CR>", opts)

-- vim.keymap.set("n", "<leader>l", function() vim.lsp.buf.format() end)
vim.keymap.set("n", "<leader>l", function () require('conform').format() end, {desc = "Format file"} )
