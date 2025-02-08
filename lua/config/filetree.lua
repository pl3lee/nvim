vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    width = 30,
  },
  filters = {
    dotfiles = true,
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
})

-- Key mapping to toggle nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
