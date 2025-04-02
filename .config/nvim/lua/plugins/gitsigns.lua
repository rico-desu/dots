return {
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                delete = { text = "󰍵" },
                changedelete = { text = "󱕖" }
            }
        },
        config = function(_, opts)
            require("gitsigns").setup(opts)
        end,
    }
}
