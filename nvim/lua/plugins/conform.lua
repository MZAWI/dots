return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            c = { "clang-format" },
            -- Conform will run multiple formatters sequentially
            python = { "isort", "black" },
            -- You can customize some of the format options for the filetype (:help conform.format)
            -- rust = { "rustfmt", lsp_format = "fallback" },
            -- Conform will run the first available formatter
            -- javascript = { "prettierd", "prettier", stop_after_first = true },
        },
        formatters = {
            stylua = {
                prepend_args = { "--indent-type", "Spaces", "--indent-width", "4" },
            },
            ["clang-format"] = {
                prepend_args = { "-style={IndentWidth: 4, UseTab: Never}" },
            },
            isort = {
                prepend_args = { "--profile", "black" },
            }
        },
    },
}
