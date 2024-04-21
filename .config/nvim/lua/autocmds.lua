local crcmd = vim.api.nvim_create_autocmd

-- autocmd InsertEnter * norm zz
crcmd('InsertEnter', {
  pattern = '*',
  command = 'norm zz',
})

crcmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.njk',
  command = 'setf htmldjango',
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
crcmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

