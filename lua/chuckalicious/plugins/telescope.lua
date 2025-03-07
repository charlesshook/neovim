return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require("telescope").setup {
        }
        vim.keymap.set("n", "<leader>fd", require('telescope.builtin').find_files)
    end
}
