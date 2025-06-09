-- leader is space
vim.g.mapleader  = " "

-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Remap escape to jj
vim.keymap.set("i", "jj", "<Esc>")

-- This remap copies to system clipboard
vim.keymap.set("v", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])

-- Leader-l to run lazy
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Project Find Files' })
-- telescope to fuzzy-find buffers
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Fuzzy Find Buffers' })
-- telescope to fuzzy-find git files
-- vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Git Files Search' })
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("grep > ") })
end)

-- neotree
vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle<CR>")

-- Remap window nav
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Terminal at bottom
vim.keymap.set("n", "<C-t>", function()
    vim.cmd.vnew()
    vim.cmd.terminal()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 15)
    job_id = vim.bo.channel
end)

-- Terminal

vim.keymap.set("n", "<leader>gr", function()
    vim.fn.chansend(job_id, {"echo 'hi'\r\n"})
end)

-- move selected shit around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
