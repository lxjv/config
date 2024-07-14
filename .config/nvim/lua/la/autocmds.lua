local cmd = vim.api.nvim_create_autocmd

-- autocmd BufNewFile,BufRead *.njk setf htmldjango
cmd({ 'BufRead', 'BufNewFile' }, {
    pattern = '*.njk',
    command = 'setf htmldjango',
})
