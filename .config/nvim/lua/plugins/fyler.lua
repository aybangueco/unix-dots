return {
  'A7Lavinraj/fyler.nvim',
  dependencies = { 'nvim-mini/mini.icons' },
  branch = 'stable', -- Use stable branch for production
  lazy = false, -- Necessary for `default_explorer` to work properly
  opts = {
    views = {
      finder = {
        close_on_select = false,
        default_explorer = true,
        watcher = {
          enabled = true,
        },
        win = {
          kinds = {
            split_left_most = {
              width = '20%',
            },
          },
          win_opts = {
            relativenumber = true,
          },
        },
      },
    },
  },
}
