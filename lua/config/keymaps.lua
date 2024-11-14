-- jumps between buffers
vim.keymap.set('n', '<M-n>', '<cmd>bnext<CR>', {})
vim.keymap.set('n', '<M-p>', '<cmd>bprev<CR>', {})
vim.keymap.set('n', '<M-x>', '<cmd>bdel<cr>', {})
vim.keymap.set('n', '<M-o>', '<cmd>%bd|e#<cr>', {})

-- jumps between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- diagnostic

-- Toogle diagnostics
local diagnostics_active = true
local toggle_diagnostics = function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.api.nvim_echo({ { 'Show diagnostics' } }, false, {})
    vim.diagnostic.enable()
  else
    vim.api.nvim_echo({ { 'Disable diagnostics' } }, false, {})
    vim.diagnostic.enable(false)
  end
end

vim.keymap.set('n', '<leader>qi', toggle_diagnostics, { desc = 'Toggle [i]nline diagnostic' })
vim.keymap.set('n', '<leader>qq', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>qn', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })
vim.keymap.set('n', '<leader>qp', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })
vim.keymap.set('n', '<leader>qs', vim.diagnostic.open_float, { desc = '[S]how popup diagnostic' })

-- lua
vim.keymap.set('n', ',x', '<cmd>write<cr><cmd>source %<cr>', { desc = 'Execute Lua script' })
vim.keymap.set('n', ',t', '<cmd>write<cr><cmd>PlenaryBustedFile %<cr>', { desc = 'Run Plenary test' })

-- utils
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>g', '<cmd>Git<cr>', { desc = '[G]it' })



