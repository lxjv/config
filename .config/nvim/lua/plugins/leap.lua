return {
    'ggandor/leap.nvim',
    deps = { 'tpope/vim-repeat' },
    config = function()
        require('leap').create_default_mappings()
    end,
}
