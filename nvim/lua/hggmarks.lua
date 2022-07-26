require("sets")
require("telescopeConfig")
require("lsp")
require("cmpConfig")

vim.g.catppuccin_flavour = "mocha" --lattem frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]
