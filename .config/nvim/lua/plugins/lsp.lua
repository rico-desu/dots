return {
    {
        "neovim/nvim-lspconfig",
        "vala-lang/vala.vim"
    },
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
                "vala_ls",
                "rust_analyzer"
            }
        },
        config = function(_, opts)
            require("mason-lspconfig").setup(opts)
            require("lspconfig").lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } }
                    }
                }
            })
            require("lspconfig").clangd.setup{}
            require("lspconfig").vala_ls.setup{}
            require("lspconfig").rust_analyzer.setup{}
        end
    }
}
