-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)

-- undo tree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- vim fugitave
vim.keymap.set("n", "<leader>g", "<cmd>Git<CR>")
