-- Highlighting search terms
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostics
vim.keymap.set('n', 'd[', vim.diagnostic.goto_prev, { desc = 'Go to previous diagonstic message' })
vim.keymap.set('n', 'd]', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', 'de', vim.diagnostic.open_float, { desc = 'Show diagnostic error message' })
vim.keymap.set('n', 'd<leader>', vim.diagnostic.setloclist, { desc = 'Open diagnostic quick fix list' })

-- Kickstar.nvim
-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
