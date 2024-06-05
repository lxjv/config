return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').register {
      ['<leader>c'] = { name = 'Code', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = 'Document', _ = 'which_key_ignore' },
      ['<leader>r'] = { name = 'Rename', _ = 'which_key_ignore' },
      ['<leader>s'] = { name = 'Search', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = 'Workspace', _ = 'which_key_ignore' },
      ['<leader>g'] = { name = 'Git', _ = 'which_key_ignore' },
      ['<leader>v'] = { name = 'Visuals', _ = 'which_key_ignore' },
      ['<leader>b'] = { name = 'Buffers', _ = 'which_key_ignore' },
    }
  end,
}

