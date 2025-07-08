-- relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indent
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.smarttab = true

-- already in status line
vim.opt.showmode = false

-- line wrapping
vim.opt.wrap = false

-- search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- tokyonight colorscheme
vim.cmd.colorscheme("tokyonight")

-- transparency
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- to make the current line number pop
vim.opt.cursorline = true

-- LANGUAGE ON TOP STUFF
vim.opt.signcolumn = "yes"

-- better splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- nerd font
vim.opt.guifont = "monospace:h17"

-- lsp diagnostics where they belong!!!
vim.diagnostic.config({ virtual_text = true })
vim.diagnostic.config({ float = { border = "rounded" } })

-- Enable OSC 52 clipboard over SSH
if os.getenv("SSH_CONNECTION") then
    vim.g.clipboard = {
        name = 'OSC 52',
        copy = {
            ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
            ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
        },
        paste = {
            ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
            ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
        },
    }
end

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"
