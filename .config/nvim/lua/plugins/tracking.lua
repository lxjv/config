return {
  -- Tracks my coding time
  { 'wakatime/vim-wakatime', lazy = false },
  
  -- Discord rich presence
  {
    'vyfor/cord.nvim',
    build = './build',
    event = 'VeryLazy',
    opts = {},
  }
}
