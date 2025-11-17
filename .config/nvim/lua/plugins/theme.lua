return {
  {
    'samharju/synthweave.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'synthweave'
      -- transparent version
      -- vim.cmd.colorscheme("synthweave-transparent")
    end,
  },
  {
    'navarasu/onedark.nvim',
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'darker',
        code_style = {
          comments = 'italic',
          functions = 'bold',
        },
      }
      -- require('onedark').load()
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,

    config = function()
      require('catppuccin').setup {
        styles = {
          -- transparent_background = true,
          float = {
            transparent = true,
            solid = true,
          },
          no_italic = true,
          term_colors = true,
          dim_inactive = {
            enabled = true,
            shade = 'dark',
            percentage = 0.15,
          },
          default_integrations = true,
          integrations = {
            blink_indent = true,
            fidget = false,
            gitsigns = true,
            mason = false,
            mini = {
              enabled = true,
              indentscope_color = '', -- catppuccin color (eg. `lavender`) Default: text
            },
            telescope = {
              enabled = true,
            },
            which_key = false,
          },
        },
      }

      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
