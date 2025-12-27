return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme 'tokyonight-storm'
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
