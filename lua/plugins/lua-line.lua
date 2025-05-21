return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'echasnovski/mini.icons' },
  config = function(_, opts)
    require('lualine').setup({})
  end,
}
