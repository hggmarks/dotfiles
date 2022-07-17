require('telescope').setup{
    defaults = {
        prompt_prefix = ">$ "
    }
}

require('telescope').load_extension('fzf')


vim.api.nvim_set_keymap("n", "<C-_>", "<cmd> lua require('telescope.builtin').current_buffer_fuzzy_find({sorting_strategy='ascending'}) <cr>",{noremap = true})

vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files <cr>", {noremap = true})
