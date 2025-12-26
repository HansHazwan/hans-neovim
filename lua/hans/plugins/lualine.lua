return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local colors = require("tokyonight.colors").setup()

    require("lualine").setup({
      options = {
        -- Disable sections and component separators
        component_separators = "",
        section_separators = "",
        theme = "auto",
      },
      sections = {
        -- these are to remove the defaults
        lualine_a = {
          {
            "branch",
            icon = "",
            color = { fg = colors.fg, bg = colors.bg, gui = "bold" },
          },
        },
        lualine_b = {
          {
            "diff",
            colored = true,
            symbols = { added = " ", modified = " ", removed = " " },
            diff_color = {
              added = { fg = colors.green },
              modified = { fg = colors.orange },
              removed = { fg = colors.red },
            },
          },
        },
        lualine_c = {
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            sections = { "error", "warn", "info" },
            symbols = { error = " ", warn = " ", info = " " },
            diagnostics_color = {
              color_error = { fg = colors.red },
              color_warn = { fg = colors.yellow },
              color_info = { fg = colors.cyan },
            }
          },
        },
        lualine_x = {"filetype"},
        lualine_y = {
          {
            "location",
            color = { fg = colors.fg_dark },
          },
        },
        lualine_z = {"encoding"},
      },
      inactive_sections = {
        -- these are to remove the defaults
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
    })
  end,
}

