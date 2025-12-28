return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup()

    local keymap = vim.keymap.set
    local opts = { silent = true }

    keymap("n", "<leader>t", function()
      vim.cmd(":NvimTreeToggle")
    end, opts)
    keymap("n", "<leader>f", function()
      vim.cmd(":NvimTreeFocus")
    end, opts)
 
 end,
}
