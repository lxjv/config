-- I straight up stole this from jamie's config lmao
-- thanx m8

return {
  {
    'goolord/alpha-nvim',
    config = function()
      local alpha = require 'alpha'
      alpha.setup(require('alpha.themes.startify').config)
      local dashboard = require 'alpha.themes.dashboard'

      local header_meow = {
        [[                                   (_)              |\      _,,,---,,_     ]],
        [[ _ __ ___   ___  _____     __   ___ _ __ ___   ZZzz /,`.-'`'    -.  ;-;;,_]],
        [[| '_ ` _ \ / _ \/ _ \ \ /\ \ \ / / | '_ ` _ \     |,4-  ) )-,_. ,\ (  `'-']],
        [[| | | | | |  __/ (_) \ V  V \ V /| | | | | | |   '---''(_/--'  `-'\_)     ]],
        [[|_| |_| |_|\___|\___/ \_/\_/ \_/ |_|_| |_| |_|                            ]],
      }

      local header_la = {
        [[ ]],
        [[ ]],
        [[ ]],
        [[ ]],
        [[ ]],
        [[ ,dPYb,            ]],
        [[ IP'`Yb            ]],
        [[ I8  8I            ]],
        [[ I8  8'            ]],
        [[ I8 dP    ,gggg,gg ]],
        [[ I8dP    dP"  "Y8I ]],
        [[ I8P    i8'    ,8I ]],
        [[,d8b,_ ,d8,   ,d8b,]],
        [[8P'"Y88P"Y8888P"`Y8]],
      }

      -- Set header
      dashboard.section.header.val = header_la
      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button('e', '󰥨  > File tree', '<leader>e'),
        dashboard.button('sf', '󰱼  > Find files', '<leader>sf'),
        dashboard.button('sg', '󰱼  > Fuzzy grep', '<leader>sg'),
        dashboard.button('sn', '  > Config', '<leader>sn'),
        --dashboard.button( "t", "  > Terminal" , "<S-T>"),
        dashboard.button('q', '󰗼  > Quit :(', ':qa<CR>'),
      }

      dashboard.section.footer.val = 'Rest in peace Bram Moolenaar // 1961 - 2023'

      -- Send config to alpha
      alpha.setup(dashboard.opts)
    end,
  },
}
