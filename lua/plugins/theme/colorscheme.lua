return {
  -- colorschemes
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  {
    "Mofiqul/vscode.nvim",
    config = function(_, _)
      --[[
      local vscode = require("vscode")
      local vscode_colors = require("vscode.colors")

      local lualine = require("lualine")

      local c = vscode_colors.get_colors()

      vscode.setup({
        transparent = true,
        italic_comments = true,
        underline_links = true,
        disable_nvimtree_bg = true,
        color_overrides = {
          vscLineNumber = "#FFFFFF",
        },
        group_overrides = {
          Cursor = {
            fg = c.vscDarkBlue,
            bg = c.vscLightGreen,
            bold = true,
          },
        },
      })

      lualine.setup({
        options = {
          theme = "vscode",
        },
      })

      vscode.load()
      ]]
      --
    end,
  },
}
