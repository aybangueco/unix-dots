return {
  'A7Lavinraj/fyler.nvim',
  keys = {
    {
      '-',
      function()
        require('fyler').toggle { kind = 'split_left_most' }
      end,
      desc = 'Fyler',
    },
  },
  ---@module 'fyler'
  ---@type FylerSetupOptions
  opts = {
    views = {
      finder = {
        close_on_select = false,
        default_explorer = true,
      },
      mappings = {
        ['-'] = 'GotoParent',
      },
    },
  },
}
