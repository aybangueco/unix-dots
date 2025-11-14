return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = {
    {
      '<leader>ha',
      function()
        require('harpoon'):list():add()
      end,
      desc = 'Harpoon Add Buffer',
    },
    {
      '<leader>hl',
      function()
        require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())
      end,
      desc = 'Harpoon Toggle Buffer List',
    },
    {
      '<leader>hc',
      function()
        require('harpoon'):list():clear()
      end,
      desc = 'Harpoon Clear Buffer List',
    },
    {
      '<leader>hs',
      function()
        local count = vim.v.count > 0 and vim.v.count or 1
        require('harpoon'):list():select(count)
      end,
      desc = 'Harpoon Switch to Buffer (default 1)',
    },
    {
      '<leader>hp',
      function()
        require('harpoon'):list():prev()
      end,
      desc = 'Harpoon Previous Buffer',
    },
    {
      '<leader>hn',
      function()
        require('harpoon'):list():next()
      end,
      desc = 'Harpoon Next Buffer',
    },
  },
}
