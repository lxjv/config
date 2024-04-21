return { {
  'catppuccin/nvim', -- the actual colorscheme
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      -- flavour = "auto" -- will respect terminal's background
      background = { -- :h background
        light = 'latte',
        dark = 'mocha',
      },
      transparent_background = true, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = 'dark',
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { 'italic' }, -- Change the style of comments
        conditionals = { 'italic' },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {},
      custom_highlights = {},
      default_integrations = true,
      integrations = {
        cmp = true,
        alpha = true,
        gitsigns = true,
        nvimtree = false,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = '',
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    }
    -- Load the colorscheme here
    vim.cmd.colorscheme 'catppuccin'

    -- You can configure highlights by doing something like
    vim.cmd.hi 'Comment gui=none'
  end,
}, {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    theme = 'catpuccin',
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = { 'encoding', 'fileformat', 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { "os.date('%a')" },
      lualine_y = {},
      lualine_z = {},
    },
  },
}, {
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

      -- Set header
      dashboard.section.header.val = header_la
      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button('e', '󰥨  > File tree', '<leader>e'),
        dashboard.button('f', '󰱼  > Find files', '<leader>sf'),
        dashboard.button('g', '󰱼  > Fuzzy grep', '<leader>sg'),
        dashboard.button('c', '  > Config', '<leader>sn'),
        --dashboard.button('t', '  > Terminal (why?)', '<S-T>'),
        dashboard.button('q', '󰗼  > Quit :(', ':qa<CR>'),
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
  },
}
