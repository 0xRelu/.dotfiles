-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Opens native explorer
vim.keymap.set('n', '<leader>e', ":Ex<Cr>", { desc = 'Open [E]xplorer' })

-- Buffer navigation
vim.keymap.set('n', '<C-l>', ":bn<CR>", { desc = 'Move to next buffer'})
vim.keymap.set('n', '<C-h>', ":bp<CR>", { desc = 'Move to previous buffer'})

--  Keybinds to make split navigation easier.
vim.keymap.set('n', '<leader>ww', '<C-w>p', { desc = "Jump to last window" })
vim.keymap.set('n', '<leader>wh', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<leader>wl', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<leader>wj', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<leader>wk', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>wd', '<C-w>c', { desc = "Close current window" })

-- Keybinds to create splits.
vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split Window Below" })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split Window Right" })

-- quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })
