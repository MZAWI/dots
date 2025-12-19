return {
    "norcalli/nvim-colorizer.lua",
    enabled = true,
    opts = {
        filetypes = { "*" },
    },
    config = function()
        require("colorizer").setup()

        vim.api.nvim_create_autocmd("BufEnter", {
            callback = function()
                vim.schedule(function()
                    require("colorizer").attach_to_buffer(0)
                end)
            end,
        })
    end,
}
