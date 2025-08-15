return {
  {
    "shaunsingh/nord.nvim",
    lazy = false, -- load at startup
    priority = 1000, -- load before all other UI plugins
    config = function()
      -- Force dark mode
      vim.opt.background = "dark"
      vim.opt.termguicolors = true

      -- Optional: tweak nord.nvim settings BEFORE loading colorscheme
      vim.g.nord_contrast = true
      vim.g.nord_borders = true
      vim.g.nord_disable_background = false
      vim.g.nord_cursorline_transparent = false
      vim.g.nord_italic = true
      vim.g.nord_uniform_diff_background = true
      vim.g.nord_bold = false

      -- Load the theme
      vim.cmd.colorscheme("nord")
    end,
  },

  -- Make lualine match Nord
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.theme = "nord"
    end,
  },
}
