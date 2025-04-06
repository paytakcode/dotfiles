return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({
      vim.keymap.set("n", "<leader>ls", "<cmd>Lspsaga finder def+ref+imp<CR>", { desc = "Show All(Def, Ref, Impl)" }),
      vim.keymap.set("n", "<leader>ld", "<cmd>Lspsaga finder def<CR>", { desc = "Show Definition" }),
      vim.keymap.set("n", "<leader>li", "<cmd>Lspsaga finder imp<CR>", { desc = "Show Implementation" }),
      vim.keymap.set("n", "<leader>lr", "<cmd>Lspsaga finder ref<CR>", { desc = "Show Refereneces" }),
      vim.keymap.set("n", "<leader>lD", "<cmd>Lspsaga hover_doc<CR>", { desc = "Show Documentation" }),
      vim.keymap.set("n", "<leader>la", "<cmd>Lspsaga code_action<CR>", { desc = "Show code action" }),
      vim.keymap.set("n", "<leader>lR", "<cmd>Lspsaga rename<CR>", { desc = "Smart Rename" }),
      vim.keymap.set("n", "<leader>lF", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { desc = "Show Cursor Diagnostic" }),
      vim.keymap.set("n", "<C-b>", "<cmd>Lspsaga goto_definition<CR>", { desc = "Go to Definition" }),
      vim.keymap.set("n", "<F2>", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next Diagnostic" }),
      vim.keymap.set("i", "<F2>", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next Diagnostic" }),
      vim.keymap.set("n", "<F1>", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Previous Diagnostic" }),
      vim.keymap.set("i", "<F1>", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Previous Diagnostic" }),
      vim.keymap.set("n", "<leader>le", "<cmd>Lspsaga show_buf_diagnostics<CR>", { desc = "Show Buffer Diagnostics" }),
      vim.keymap.set("n", "<leader>lE", "<cmd>Lspsaga show_workspace_diagnostics<CR>", { desc = "Show Workspace Diagnostics" }),
      vim.keymap.set("n", "<leader>t", "<cmd>Lspsaga term_toggle<CR>", { desc = "Terminal" }), outline = { layout = "float", }, lightbulb = { enable = false, },
      vim.keymap.set("n", "<leader>lo", "<cmd>Lspsaga outline<CR>", { desc = "Show Outline" }),
      vim.diagnostic.config({ virtual_text = false, underline = false }),
      vim.diagnostic.config({
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.HINT] = "",
            [vim.diagnostic.severity.INFO] = "󰙎",
          },
        },
      }),
    })
    require("lspsaga.symbol.winbar").get_bar()
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
}
