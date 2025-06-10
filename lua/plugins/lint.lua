return {
    { -- Linting
        "mfussenegger/nvim-lint",
        event = {'BufReadPre', 'BufNewFile',},
        config = function()
            local lint = require('lint')

            lint.linters_by_ft = {
                python = {'markdownlint'},
            }
            local lint_group = vim.api.nvim_create_augroup('Lint', { clear = true })
            vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
                group = lint_group,
                callback = function()
                    lint.try_lint()
                end,
            })
        end
    }
}

