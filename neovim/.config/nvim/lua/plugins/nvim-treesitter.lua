return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.install").prefer_git = true
      require("nvim-treesitter.configs").setup({
        highlight = { enable = true },
        ensure_installed = {
          "cpp",
          "bash",
          "css",
          "dockerfile",
          "go",
          "gomod",
          "html",
          "java",
          "javascript",
          "json",
          "lua",
          "python",
          "rust",
          "scss",
          "toml",
          "typescript",
          "yaml",
          "regex",
          "norg",
          "svelte",
          "tsx",
          "typst",
          "vue",
        },
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("nvim-ts-autotag").setup({
        opts = {
          -- Defaults
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false, -- Auto close on trailing </
        },
        -- Also override individual filetype configs, these take priority.
        -- Empty by default, useful if one of the "opts" global settings
        -- doesn't work well in a specific filetype
        -- per_filetype = {
        --   ["html"] = {
        --     enable_close = true,
        --   },
        -- },
      })
    end,
  },
}
