return {
  { -- pomodoro timer
    'epwalsh/pomo.nvim',
    version = '*', -- Recommended, use latest release instead of latest commit
    lazy = true,
    cmd = { 'TimerStart', 'TimerRepeat' },
    opts = { notifiers = { { name = "Default", opts = { sticky = false } } } } 
  },

  { -- another thing on the pile of journals i have
    "jakobkhansen/journal.nvim",
    config = function()
        require("journal").setup({
          filetype = 'md',                    -- Filetype to use for new journal entries
          root = '~/vaults/nvim-jrnl',        -- Root directory for journal entries
          date_format = '%d/%m/%Y',           -- Date format for `:Journal <date-modifier>`
          autocomplete_date_modifier = "end", -- "always"|"never"|"end". Enable date modifier autocompletion

          -- Configuration for journal entries
          journal = {
            -- Default configuration for `:Journal <date-modifier>`
            format = '%Y/%m-%B/daily/%d-%A',
            template = '# %A %B %d %Y\n',
            frequency = { day = 1 },

            -- Nested configurations for `:Journal <type> <type> ... <date-modifier>`
            entries = {
              day = {
                  format = '%Y/%m-%B/daily/%d-%A', -- Format of the journal entry in the filesystem.
                  template = '# %A %B %d %Y\n',    -- Optional. Template used when creating a new journal entry
                  frequency = { day = 1 },         -- Optional. The frequency of the journal entry. Used for `:Journal next`, `:Journal -2` etc
              },
              week = {
                  format = '%Y/%m-%B/weekly/week-%W',
                  template = "# Week %W %B %Y\n",
                  frequency = { day = 7 },
                  date_modifier = "monday" -- Optional. Date modifier applied before other modifier given to `:Journal`
              },
              month = {
                  format = '%Y/%m-%B/%B',
                  template = "# %B %Y\n",
                  frequency = { month = 1 }
              },
              year = {
                  format = '%Y/%Y',
                  template = "# %Y\n",
                  frequency = { year = 1 }
              },
            },
          }
        })

    end,
  },
}

