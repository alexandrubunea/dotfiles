-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system({ 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath })
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

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.opt.number = true

-- Setup lazy.nvim
require('lazy').setup({
  spec = {
    -- import your plugins
    { import = 'plugins' },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { 'catppuccin' } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- Theme & Style
require('catppuccin').setup({
    transparent_background = true
})
vim.cmd.colorscheme 'catppuccin'

require('lualine').setup({
    options = {theme = 'auto'}
})

vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=true })

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Neotree
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = 'Toggles neotree' })
vim.keymap.set('n', '<leader>ef', ':Neotree focus<CR>', { desc = 'Focus neotree' })

-- Treesitter
local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
parser_config.blade = {
    install_info = {
        url = 'https://github.com/EmranMR/tree-sitter-blade',
        files = {'src/parser.c'},
        branch = 'main'
    },
    filetype = 'blade'
}
require('nvim-treesitter.configs').setup({
    ensure_installed = {
        'php', 'php_only', 'phpdoc', 'blade', 
        'javascript', 
        'html', 'css'
    },
    highlight = {enable = true},
})

-- Autotag
require('nvim-ts-autotag').setup({
    filetypes = { 'html', 'xml', 'blade', 'javascript', 'php'},
})

-- Prettier
vim.keymap.set('n', '<leader>pf', function() vim.lsp.buf.format() end, { desc = 'Prettier format' })

-- Conform
require('conform').setup({
    formatters_by_ft = {
        blade = { 'blade-formatter' }
    }
})

-- Programming Languages & Frameworks

-- Laravel
require('laravel').setup({
    commands = {
        artisan = true,
        routes = true,
    }
})
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
    pattern = '*.blade.php',
    callback = function()
        vim.bo.filetype = 'blade'
    end,
})
