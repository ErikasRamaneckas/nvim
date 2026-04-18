local opt = vim.opt

-- Line number settings
opt.nu = true
opt.relativenumber = true

-- Indentation settings
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.scrolloff = 12

-- Autocomplete options
opt.completeopt = { "menuone", "noselect", "popup" }
opt.autocomplete = true
opt.complete:append("s")
