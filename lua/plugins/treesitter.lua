local parsers = {
    "lua",
    "php",
    "php_only",
    "blade",
    "html",
    "css",
    "javascript",
}

return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    opts = {},
    config = function(_, opts)
        local nts = require("nvim-treesitter")
        vim.api.nvim_create_autocmd("FileType", {
            pattern = parsers,
            callback = function()
                vim.treesitter.start()
            end,
        })
        nts.setup(opts)
        nts.install(parsers)
    end,
}
