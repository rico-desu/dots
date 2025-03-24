return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "lua",
                "c",
                "rust",
                "vimdoc",
                "bash",
                "javascript",
                "typescript"
            },
            sync_install = false,
            auto_install = true
        },
        config = function(_, opts)
            require("nvim-treesitter").setup(opts)
        end
    }
}
