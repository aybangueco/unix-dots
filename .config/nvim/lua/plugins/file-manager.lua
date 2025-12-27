return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = false,
      watch_for_changes = true,
      view_options = {
        show_hidden = true,
      },
    },
    dependencies = {
      { 'nvim-mini/mini.icons', opts = {} },
    },
    lazy = false,
  },
  {
    'benomahony/oil-git.nvim',
    dependencies = { 'stevearc/oil.nvim' },
  },
  {
    'JezerM/oil-lsp-diagnostics.nvim',

    dependencies = {
      'stevearc/oil.nvim',
    },

    opts = {},
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons', -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = {
      filesystem = {
        hijack_netrw_behavior = 'open_default',
        follow_current_file = {
          enabled = true,
        },
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_ignored = false,
          ignore_files = {},
        },
      },
      event_handlers = {
        {
          event = 'neo_tree_buffer_enter',
          handler = function(arg)
            vim.cmd [[
          setlocal relativenumber
        ]]
          end,
        },
      },
      window = {
        position = 'right',
        width = 40,
        mappings = {
          ['<space>'] = 'toggle_node',
          ['<cr>'] = 'open',
          ['o'] = 'open',

          ['h'] = 'close_node',
          ['l'] = 'open',

          ['<C-x>'] = 'open_split',
          ['<C-v>'] = 'open_vsplit',
          ['t'] = 'open_tabnew',

          ['a'] = 'add',
          ['A'] = 'add_directory',
          ['d'] = 'delete',
          ['r'] = 'rename',

          ['y'] = 'copy_to_clipboard',
          ['x'] = 'cut_to_clipboard',
          ['p'] = 'paste_from_clipboard',

          ['R'] = 'refresh',
          ['?'] = 'show_help',

          ['<bs>'] = 'navigate_up',
          ['.'] = 'set_root',
        },
      },
    },
  },
}
