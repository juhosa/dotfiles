return {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    config = function()
        vim.keymap.set('n', 'E', '<cmd>Oil<CR>', { desc = 'Open parent directory' })

        require('oil').setup()
    end,
}
