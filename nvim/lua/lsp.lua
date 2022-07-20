--cmp capabilities
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local lsp = require("lspconfig")

lsp.pyright.setup{
    capabilities = capabilities,
    on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer = 0})
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {buffer = 0})
        vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next, {buffer = 0})
        vim.keymap.set("n", "<leader>p", vim.diagnostic.goto_prev, {buffer = 0})
        vim.keymap.set("n", "Td", "<cmd>Telescope diagnostics<cr>", {buffer = 0})
            vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, {buffer = 0})

    end
}

