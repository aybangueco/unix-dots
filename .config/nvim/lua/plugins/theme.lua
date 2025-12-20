return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,

    config = function()
      require('catppuccin').setup {
        styles = {
          no_italic = true,
          term_colors = true,
          default_integrations = true,
          auto_integrations = true,
        },
      }

      vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
