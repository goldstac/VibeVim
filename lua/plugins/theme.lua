return {
  "Mofiqul/dracula.nvim",
  priority = 1000,
  config = function()
    require("dracula").setup({
      colors = {
        bg = "#282a36",
      },
    })
    vim.cmd.colorscheme("dracula")
  end,
}
