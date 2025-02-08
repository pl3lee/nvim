return {
  {
      "tpope/vim-fugitive",
      config = function()
          -- Add keymaps for common Fugitive commands
          vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })
      end
  }
}