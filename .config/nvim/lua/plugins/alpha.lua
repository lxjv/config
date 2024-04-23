return {
  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    alpha.setup(require('alpha.themes.startify').config)
    local dashboard = require 'alpha.themes.dashboard'

    local header_meow = {
      [[ ]],
      [[ ]],
      [[ ]],
      [[ ]],
      [[ ]],
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
      [[ ]],
    }

    local headers = {
      {
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
        [[ ]],
      },
      {
        [[ ]],
        [[ ]],
        [[ ]],
        [[ ]],
        [[ ]],
        [[ _                                    ]],
        [[| |                     o             ]],
        [[| |  __,    _  _            _  _  _   ]],
        [[|/  /  |   / |/ |  |  |_|  / |/ |/ |  ]],
        [[|__/\_/|_/o  |  |_/ \/  |_/  |  |  |_/]],
        [[                                      ]],
      },
      {
        [[ ]],
        [[ ]],
        [[ ]],
        [[ ]],
        [[ ]],
        [[                                   (_)              |\      _,,,---,,_     ]],
        [[ _ __ ___   ___  _____     __   ___ _ __ ___   ZZzz /,`.-'`'    -.  ;-;;,_]],
        [[| '_ ` _ \ / _ \/ _ \ \ /\ \ \ / / | '_ ` _ \     |,4-  ) )-,_. ,\ (  `'-']],
        [[| | | | | |  __/ (_) \ V  V \ V /| | | | | | |   '---''(_/--'  `-'\_)     ]],
        [[|_| |_| |_|\___|\___/ \_/\_/ \_/ |_|_| |_| |_|                            ]],
      },
    }

    -- Set header
    dashboard.section.header.val = headers[math.random(#headers)]
    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button('e', '󰀶  > File tree', '<leader>e'),
      dashboard.button('f', '󰥨  > Find files', '<leader>sf'),
      dashboard.button('z', '󰱼  > Fuzzy find', '<leader>sg'),
      dashboard.button('c', '  > Config', '<leader>sn'),
      dashboard.button('l', '  > Lazy', '<cmd>Lazy<CR>'),
      dashboard.button('t', '  > Terminal', '<S-T>'),
      dashboard.button('q', '󰗼  > Quit :(', '<cmd>qa<CR>'),
    }

    local footer_fortunes = {
      'Rest in peace Bram Moolenaar // 1961 - 2023',
      'Time is an illusion. Lunch-time doubly so.',
      'So long, and thanks for all the fish',
      'all caps when you spell the man name',
    }

    dashboard.section.footer.val = footer_fortunes[math.random(#footer_fortunes)]
    -- Send config to alpha
    alpha.setup(dashboard.opts)
  end,
}
