return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  config = function()
    require("dashboard").setup({
      config = {

        week_header = {
          enable = true,
        },


        shortcut = {

          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          {
            icon = ' ',
            icon_hl = '@variable',

            desc = 'Files',
            group = 'Label',
            action = 'Snacks.picker.files()',
            key = 'f',
          },
          {
            desc = ' Projects',
            group = 'DiagnosticHint',
            action = 'Snacks.picker.projects()',
            key = 'p',


          },

          -- {
          --   desc = ' dotfiles',
          --   group = 'Number',
          --   action = 'Telescope dotfiles',
          --   key = 'd',
          -- },
        },
      },
    })

  end,
  dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
