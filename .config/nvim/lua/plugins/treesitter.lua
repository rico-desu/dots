return {
    {
        "nvim-treesitter/nvim-treesitter",
        cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "lua",
                "c",
                "vala",
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
            require("nvim-treesitter.configs").setup(opts)
        end
    }
}
