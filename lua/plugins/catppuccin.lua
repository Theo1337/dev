return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()

    vim.cmd.colorscheme 'catppuccin'

    require('catppuccin').setup({
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = {
          enabled = true,
        },
        which_key = true,

      },

    })
  end,
}
