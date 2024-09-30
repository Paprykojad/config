require("nvim-tree").setup()

vim.keymap.set('n', '<leader>pp', nvim-tree-api.tree.toggle(), )
