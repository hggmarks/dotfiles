local neotree = require("neo-tree")

neotree.setup({
    close_if_last_window = false,
    popup_border_style = "rounded",
    event_handlers = {
        {
            event = "vim_buffer_enter",
            handler = function(_)
                if vim.bo.filetype == "neo-tree" then
                    vim.wo.signcolumn = "auto"
                end
            end,
        },
    },
})


vim.keymap.set("n", "<leader>pv", function() neotree.show(0, true, true, true) end, { desc = '[p]roject [v]iew' })
