local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- PHP Intelephense
lspconfig.intelephense.setup({
    settings = {
        intelephense = {
            environment = {
                phpVersion = '8.1'
            }
        }
    }
})

-- HTML
lspconfig.html.setup({
    capabilities = capabilities,
    filetypes = { 'html', 'blade' },
})

-- TailwindCSS
lspconfig.tailwindcss.setup({
    capabilities = capabilities,
    filetypes = { 'html', 'css', 'javascript', 'blade' },
})

-- CSS
lspconfig.cssls.setup({
    capabilities = capabilities,
})

-- JavaScript/TypeScript
lspconfig.ts_ls.setup({
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
    end,
})

-- LaTeX
lspconfig.ltex.setup({
    cmd = { 'ltex-ls'},
    settings = {
        ltex = {
            language = 'ro',
            additionalLanguages = {'en'},
        }
    }
})
