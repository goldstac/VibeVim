return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
        highlight_git = true,
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
          },
        },
      },
      filters = {
        dotfiles = false,
      },
      git = {
        enable = true,
      },
    })

    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
  end,
}
