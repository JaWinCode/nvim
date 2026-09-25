return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    version = "v1.6.0",
    config = function()
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
