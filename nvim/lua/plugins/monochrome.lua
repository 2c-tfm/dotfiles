return {
  {
    "kdheepak/monochrome.nvim",
    config = function()
      vim.cmd("colorscheme monochrome")
      
      local highlights = {
        String = { fg = "#cc0000" }, 
        Keyword = { fg = "#ff0000", bold = true },
        Conditional = { fg = "#ff0000", bold = true },
        Function = { fg = "#ffffff", bold = true },
        Comment = { fg = "#555555", italic = true },
        Normal = { bg = "#000000", fg = "#d0d0d0" },
        LineNr = { fg = "#444444" },
        CursorLine = { bg = "#0f0f0f" },
      }

      for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
      end
    end
  }
}
