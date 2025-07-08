-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>1", function()
    ui.nav_file(1)
end)
vim.keymap.set("n", "<leader>2", function()
    ui.nav_file(2)
end)
vim.keymap.set("n", "<leader>3", function()
    ui.nav_file(3)
end)
vim.keymap.set("n", "<leader>4", function()
    ui.nav_file(4)
end)

-- undo tree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- vim fugitave
vim.keymap.set("n", "<leader>g", "<cmd>Git<CR>")

-- neotree auto close after file
require("neo-tree").setup({
    event_handlers = {
        {
            event = "file_opened",
            handler = function(file_path)
                -- close neo-tree
                require("neo-tree.command").execute({ action = "close" })
            end,
        },
    },
})

-- conceallevel = 1 for obsidian
-- vim.opt.conceallevel = 1
