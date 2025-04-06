return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts_extend = { "spec" },
  opts = {
    preset = "helix",
    defaults = {},
    spec = {
      {
        mode = { "n", "v" },
        -- { "<leader>e", group = "Explorer", icon = { icon = "󱖫 ", color = "cyan" } },
        { "<leader>d", group = "Debug" },
        { "<leader>f", group = "Find" },
        { "<leader>g", group = "Git" },
        { "<leader>gh", group = "Hunks" },
        { "<leader>l", group = "Lsp", icon = { icon = "󱖫", color = "orange" } },
        -- { "<leader>p", group = "Project" },
        { "<leader>s", group = "Search" },
        -- { "<leader>S", group = "Session" },
        { "<leader>u", group = "UI", icon = { icon = "󰙵", color = "cyan" } },
        { "<leader>x", group = "Diagnostics/Quickfix", icon = { icon = "󱖫", color = "green" } },
        -- { "[", group = "prev" },
        -- { "]", group = "next" },
        -- { "g", group = "goto" },
        { "<leader>b", group = "Buffer" },
        -- { "<leader>w", group = "windows", proxy = "<c-w>", expand = function() return require("which-key.extras").expand.win() end, },
        { "<leader>w", group = "Windows/Session" },
      },
    },
  },
  keys = {},
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    if not vim.tbl_isempty(opts.defaults) then
      wk.register(opts.defaults)
    end
  end,
}
