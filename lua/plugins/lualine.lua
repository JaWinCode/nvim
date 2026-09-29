return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("lualine").setup({
      options = {
        theme = "catppuccin-nvim",
        icons_enabled = true,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" }, 
	lualine_x = { "lsp_status", "encoding", "fileformat", "filetype" },
        lualine_y = { 
	  function()
	    return os.date("%d/%m/%Y")
	  end
	},
	lualine_z = { 
	  function()
	    return os.date("%I:%M %p")
	  end
	},
      },
    })
  end,
}
