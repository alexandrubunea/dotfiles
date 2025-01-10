return {
    {
        'lervag/vimtex',
        lazy = true,
        ft = { 'tex', 'latex' },
        config = function()
            vim.g.vimtex_compiler_latexmk = {
                build_dir = 'build', 
                options = {
                    '-pdf', 
                    '-interaction=nonstopmode', 
                    '-synctex=1', 
                },
            }
            vim.g.vimtex_view_method = 'zathura' 
        end,
    }
}
