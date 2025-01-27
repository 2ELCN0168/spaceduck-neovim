local keymap = vim.keymap

-- MANAGEMENT
keymap.set('n', '<leader>ml', '<cmd>Lazy<CR>', { desc = 'Open Lazy' })
keymap.set('n', '<leader>mm', '<cmd>Mason<CR>', { desc = 'Open Mason' })

-- WINDOW MANAGEMENT
keymap.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
keymap.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' })
keymap.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' })
keymap.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })

-- TAB MANAGEMENT
keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' })
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' })
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' })
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' })
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' })

-- BUFFERS MANAGEMENT
keymap.set('n', '<leader>bd', '<cmd>bd<CR>', { desc = 'Close current buffer' })
keymap.set('n', '<leader>bb', '<cmd>buffers<CR>', { desc = 'List opened buffers' })
keymap.set('n', '<leader>bp', '<cmd>bprevious<CR>', { desc = 'Previous buffer' })
keymap.set('n', '<leader>bn', '<cmd>bnext<CR>', { desc = 'Next buffer' })
keymap.set('n', '<leader>ba', '<cmd>bufdo bdelete<CR>', { desc = 'Close all buffers' })
keymap.set('n', '<leader>bx', '<cmd>bd!<CR>', { desc = 'Delete/Close buffer without saving' })

-- UI
keymap.set('n', '<leader>uu', '<cmd>Themery<CR>', { desc = 'Change colorscheme' })
