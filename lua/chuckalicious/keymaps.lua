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