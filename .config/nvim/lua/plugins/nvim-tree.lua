return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-mini/mini.icons',
  },
  config = function()
    require('nvim-tree').setup {
      view = {
        width = 35,
        relativenumber = true,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
      filters = {
        git_ignored = false,
        custom = {
          '.git',
          '.DS_Store',
        },
      },
    }
  end,
}
