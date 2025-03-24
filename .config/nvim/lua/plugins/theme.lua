return {
    {
        "rebelot/kanagawa.nvim",
        opts = {
            compile = true,
            transparent = true,
            background = {
                dark = "dragon",
                light = "lotus"
            },
            colors = {
                theme = {
                    all = { ui = { bg_gutter = "none" } }
                }
            }
        },
        config = function(_, opts)
            require("kanagawa").setup(opts)
            vim.cmd("colorscheme kanagawa")
        end,
    }
}
