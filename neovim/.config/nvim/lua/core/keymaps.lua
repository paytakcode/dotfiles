local keymap = vim.keymap

keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save current buffer" })
keymap.set("i", "<C-s>", "<cmd>w<CR><C-c>", { desc = "Save current buffer" })
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")
keymap.set("i", "<C-l>", "<Right>")
-- keymap.set("i", ",,", "<ESC>")

keymap.set("n", "<leader>sn", "<cmd>nohl<CR>", { desc = "Clear Search Highlights" })

-- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
-- keymap.set("n", "<leader>-", "<C-a>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split Window Vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split Window Horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make Splits Equal Size" })
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close Current Split" })
-- keymap.set("n", "<leader>wj", "<C-w>-", { desc = "Make split window height shorter"})
-- keymap.set("n", "<leader>wk", "<C-w>+", { desc = "Make split windows height taller"})
-- keymap.set("n", "<leader>wl", "<C-w>>5", { desc = "Make split windows width bigger"})
-- keymap.set("n", "<leader>wh", "<C-w><5", { desc = "Make split windows width smaller"})
-- Toggle Maximize Current Split(Vim-Maximizer)
-- keymap.set("n", "<leader>wm", "<cmd>MaximizerToggle<CR>", { desc = "Toggle Maximize Split" })

-- Tab management
keymap.set("n", "<A-n>", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<A-x>", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<A-l>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<A-h>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<A-d>", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Debugging
keymap.set("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "Toggle Breakpoint" })
keymap.set("n", "<leader>dC", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>", { desc = "Set Breakpoint with condition" })
keymap.set("n", "<leader>dL", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>", { desc = "Set Breakpoint with message" })
keymap.set("n", "<leader>dD", "<cmd>lua require'dap'.clear_breakpoints()<cr>", { desc = "Clear Breakpoint" })
keymap.set("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", { desc = "Continue" })
keymap.set("n", "<leader>dj", "<cmd>lua require'dap'.step_over()<cr>", { desc = "Step Over" })
keymap.set("n", "<leader>dk", "<cmd>lua require'dap'.step_into()<cr>", { desc = "Step Into" })
keymap.set("n", "<leader>do", "<cmd>lua require'dap'.step_out()<cr>", { desc = "Step Out" })
keymap.set("n", "<leader>dd", function() require("dap").disconnect() require("dapui").close() end, { desc = "Disconnect Debugger" })
keymap.set("n", "<leader>dt", function() require("dap").terminate() require("dapui").close() end, { desc = "Terminate Debugger" })
keymap.set("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = "Toggle REPL" })
keymap.set("n", "<leader>ds", "<cmd>lua require'dap'.run_last()<cr>", { desc = "Run Last Debugger" })
keymap.set("n", "<leader>di", function() require("dap.ui.widgets").hover() end, { desc = "Hover widgets" })
keymap.set("n", "<leader>d?", function() local widgets = require("dap.ui.widgets") widgets.centered_float(widgets.scopes) end, { desc = "Float widgets" })
-- keymap.set("n", "<leader>dl", "<cmd>Telescope dap list_breakpoints<cr>", { desc = "Telescope Breakpoint" })
-- keymap.set("n", "<leader>df", "<cmd>Telescope dap frames<cr>", { desc = "Telescope dap frames" })
-- keymap.set("n", "<leader>dh", "<cmd>Telescope dap commands<cr>", { desc = "Telescope dap commands" })
-- keymap.set("n", "<leader>xE", function() require("telescope.builtin").diagnostics({}) end, { desc = "Open Telescope diagnostics" })
