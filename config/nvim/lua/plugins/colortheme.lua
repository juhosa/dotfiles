return {
    'folke/tokyonight.nvim',
    priority = 1000, -- make sure to load this before all the other start plugins
    init = function()
        vim.cmd.colorscheme 'tokyonight-night'

        -- You can configure highlights by doing something like
        vim.cmd.hi 'Comment gui=none'
    end,
    opts = {},
}
