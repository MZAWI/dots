-- Highlight, edit, and navigate code
return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = { "c", "cpp", "go", "lua", "python", "rust", "vimdoc", "vim", "bash", "html", "css", "javascript", "sql" },
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
    },
}
