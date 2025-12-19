return {
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            overrides = {
            },
        }, -- Add your gruvbox config here if needed
        config = function(_, opts)
            require("gruvbox").setup(opts)
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
    },
}
