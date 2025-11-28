-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Opens native explorer
vim.keymap.set('n', '<leader>e', ":Ex<Cr>", { desc = 'Open [E]xplorer' })

-- Buffer navigation
vim.keymap.set('n', '<C-l>', ":bn<CR>", { desc = 'Move to next buffer'})
vim.keymap.set('n', '<C-h>', ":bp<CR>", { desc = 'Move to previous buffer'})
vim.keymap.set('n', '<leader>bd', ':bd<CR>', { desc = "Close current buffer" })
vim.keymap.set('n', '<leader>bb', '<C-^>', { desc = "Switch to previous buffer" })

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

-- lsp keymaps
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Gehe zur Definition" })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "Gehe zur Deklaration" })
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "Zeige Implementierungen" })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "Zeige Referenzen" })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover Info" })

vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { desc = "Symbol umbenennen" })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
-- vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format, { desc = "Format buffer" })
vim.keymap.set('n', '<leader>cf', function()
    require('conform').format({ async = true })
end, { desc = "Format buffer with Conform" })

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Zum vorherigen Fehler" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Zum nächsten Fehler" })
vim.keymap.set('n', '<leader>de', vim.diagnostic.open_float, { desc = "Fehlerinfo anzeigen" })
vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist, { desc = "Fehler in Loclist setzen" })
