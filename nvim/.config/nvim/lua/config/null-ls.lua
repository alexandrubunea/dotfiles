local null_ls = require('null-ls')

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.blade_formatter.with({
            command = 'blade-formatter',
            filetypes = { 'blade' },
        }),
    },
    on_attach = function(client, bufnr)
        if client.supports_method('textDocument/formatting') then
            vim.api.nvim_buf_set_option(bufnr, 'formatexpr', 'v:lua.vim.lsp.formatexpr()')
            vim.keymap.set('n', '<leader>bf', function()
                vim.lsp.buf.format({ bufnr = bufnr })
            end, { desc = 'Format Blade file', buffer = bufnr })
        end
    end,
})

