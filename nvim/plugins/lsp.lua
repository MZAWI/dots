return {
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "folke/lazydev.nvim",
        },

        config = function()
            vim.diagnostic.enable = true
            vim.diagnostic.config({
                virtual_text = true,
            })
            vim.lsp.enable("clangd")
            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pyright")
            vim.lsp.enable("html")
            vim.lsp.enable("cssls")
            vim.lsp.enable("eslint")
        end,
        formattingOptions = {
            IndentWidth = 4,
            TabWidth = 4,
            UseTab = "Never",
        },
    },
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                -- See the configuration section for more details
                -- Load luvit types when the `vim.uv` word is found
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
}
