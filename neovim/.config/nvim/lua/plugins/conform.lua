return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        liquid = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
      },
      -- format_on_save = {
      --   lsp_fallback = true,
      --   async = false,
      --   timeout_ms = 1000,
      -- },
    })
  vim.keymap.set({ "n", "v" }, "<leader>F", function()
    conform.format({ async = true }, function(err)
      if not err then
        local mode = vim.api.nvim_get_mode().mode
        if vim.startswith(string.lower(mode), "v") then
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", true)
        end
      end
    end)
  end, { desc = "Format Code" })
  end,
}
