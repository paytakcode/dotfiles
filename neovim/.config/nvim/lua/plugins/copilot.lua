return {
  "github/copilot.vim",
  config = function()
    vim.keymap.set('i', '<C-RIGHT>', '<Plug>(copilot-accept-word)')
    vim.keymap.set('i', '<C-LEFT>', '<Plug>(copilot-dismiss)')
    vim.keymap.set('i', '<C-UP>', '<Plug>(copilot-suggest)')
    vim.keymap.set('i', '<C-DOWN>', '<Plug>(copilot-accept-line)')
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_create_autocmd('ColorScheme', {
      pattern = 'kanagawa',
      callback = function()
        vim.api.nvim_set_hl(0, 'CopilotSuggestion', {
          fg = '#555555',
          ctermfg = 8,
          force = true
        })
      end
    })
  end,
}
