return {
  "nvim-treesitter/nvim-treesitter",
  lazy = true,
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "TSInstall", "TSUpdate" },
  config = function()
    require("nvim-treesitter.config").setup({
      ensure_installed = {
        "c", "cpp", "lua", "python", "rust", "typescript",
        "javascript", "go", "java", "bash", "markdown",
        "yaml", "json", "html", "css",
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    })
  end,
}
