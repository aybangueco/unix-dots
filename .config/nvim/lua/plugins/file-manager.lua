return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      use_default_keymaps = false,
      keymaps = {
        ['g?'] = { 'actions.show_help', mode = 'n' },
        ['<CR>'] = 'actions.select',
        ['<C-v>'] = { 'actions.select', opts = { vertical = true } },
        ['<C-x>'] = { 'actions.select', opts = { horizontal = true } },
        ['<C-t>'] = { 'actions.select', opts = { tab = true } },
        ['<C-p>'] = 'actions.preview',
        ['<C-c>'] = { 'actions.close', mode = 'n' },
        ['<C-r>'] = 'actions.refresh',
        ['-'] = { 'actions.parent', mode = 'n' },
        ['_'] = { 'actions.open_cwd', mode = 'n' },
        ['`'] = { 'actions.cd', mode = 'n' },
        ['~'] = { 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
        ['gs'] = { 'actions.change_sort', mode = 'n' },
        ['gx'] = 'actions.open_external',
        ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
        ['g\\'] = { 'actions.toggle_trash', mode = 'n' },
      },
      view_options = {
        is_hidden_file = function(name, _)
          local hide = {
            -- Git
            ['.git'] = true,
            ['.gitattributes'] = true,
            ['.gitmodules'] = true,

            -- System
            ['.DS_Store'] = true,
            ['Thumbs.db'] = true,

            -- IDE
            ['.idea'] = true,
            ['.fleet'] = true,
            ['.history'] = true,

            -- Build artifacts
            ['dist'] = true,
            ['build'] = true,
            ['out'] = true,
            ['target'] = true,
            ['__pycache__'] = true,
          }

          return hide[name] == true
        end,
      },
    },
    dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
    lazy = false,
  },
  {
    'benomahony/oil-git.nvim',
    dependencies = { 'stevearc/oil.nvim' },
  },
  {
    'JezerM/oil-lsp-diagnostics.nvim',
    dependencies = { 'stevearc/oil.nvim' },
    opts = {},
  },
}
