return {
    "ThePrimeagen/harpoon",
    lazy = true,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = true,
    keys = {
        { "<leader>hm", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark file with harpoon" },
        { "<leader>hr", "<cmd>lua require('harpoon.mark').rm_file()<cr>", desc = "Remove file with harpoon" },
        { "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to next harpoon mark" },
        { "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to previous harpoon mark" },
        { "<leader>hs", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks" },
        { "<leader>1", "<cmd> lua require('harpoon.ui').nav_file(1)<cr>", desc = "file 1" },
        { "<leader>2", "<cmd> lua require('harpoon.ui').nav_file(2)<cr>", desc = "file 2" },
        { "<leader>3", "<cmd> lua require('harpoon.ui').nav_file(3)<cr>", desc = "file 3" },
        { "<leader>4", "<cmd> lua require('harpoon.ui').nav_file(4)<cr>", desc = "file 4" },
    },
}
