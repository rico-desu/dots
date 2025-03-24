return {
    {
        "williamboman/mason.nvim",
        cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "clangd",
                "rust_analyzer"
            }
        },
        config = function(_, opts)
            require("mason-lspconfig").setup(opts)
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").lua_ls.setup{}
            require("lspconfig").clangd.setup{}
            require("lspconfig").rust_analyzer.setup{}
        end
    }
}
