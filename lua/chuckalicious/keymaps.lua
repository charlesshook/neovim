vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Enable and Disable Github Copilot
vim.keymap.set("n", "<leader>ce",
    function()
        vim.cmd("Copilot enable")
        print("Copilot enabled")
    end
)

vim.keymap.set("n", "<leader>cd",
    function()
        vim.cmd("Copilot disable")
        print("Copilot disabled")
    end
)


-- Opens a new terminal at the bottom of the screen
local set = vim.opt_local

vim.api.nvim_create_autocmd("TermOpen", {
    group = vim.api.nvim_create_augroup("custom-term-open", {}),
    callback = function()
        set.number = false
        set.relativenumber = false
        set.scrolloff = 0
    end,
})

vim.keymap.set("n", "<leader>st",
    function()
        vim.cmd.new()
        vim.cmd.wincmd "J"
        vim.api.nvim_win_set_height(0, 12)
        vim.wo.winfixheight = true
        vim.cmd.term()
    end
)
