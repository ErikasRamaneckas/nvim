local parsers = {
    "lua",
    "php",
    "blade",
    "html",
    "css",
    "javascript",
}

return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    init = function()
        require("nvim-treesitter").install(parsers)
    end,
    config = function()
        vim.api.nvim_create_autocmd("FileType", {
            pattern = parsers,
            callback = function()
                vim.treesitter.start()                                            -- highlighting
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- indentation
            end,
        })
    end,
}
