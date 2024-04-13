local crcmd = vim.api.nvim_create_autocmd

-- autocmd InsertEnter * norm zz
crcmd('InsertEnter', {
  pattern = '*',
  command = 'norm zz',
})
