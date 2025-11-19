require 'core.keymaps'
require 'core.options'
require 'core.snippets'

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
            { out, 'WarningMsg' },
            { '\nPress any key to exit...' },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require('lazy').setup {
    -- require plugins here
    -- ie require 'plugins.neotree'
    require 'plugins.colortheme',
    -- require 'plugins.neotree',
    require 'plugins.mini',
    require 'plugins.treesitter',
    require 'plugins.misc',
    require 'plugins.telescope',
    require 'plugins.autocompletion',
    require 'plugins.autoformat',
    require 'plugins.lsp',
    require 'plugins.zk-nvim',
    require 'plugins.oil',
    require 'plugins.uv',
    require 'plugins.snacks',
}
vim.cmd 'filetype plugin on'
