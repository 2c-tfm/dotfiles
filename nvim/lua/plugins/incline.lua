return {
  {
    "b0o/incline.nvim",
    dependencies = { "craftzdog/solarized-osaka.nvim" },
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local colors = require("solarized-osaka.colors").setup()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = "#1a0000", guifg = "#8b0000" },
            InclineNormalNC = { guifg = "#500000", guibg = "#100000" },
          },
        },
        window = {
          margin = { vertical = 0, horizontal = 0 },
          placement = { vertical = "top", horizontal = "right" },
        },
        hide = {
          cursorline = false,
          only_win = false,
        },
        ignore = {
          buftypes = {},
          filetypes = {},
          unlisted_buffers = false,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if filename == "" then
            filename = "[No Name]"
          end
          if vim.bo[props.buf].modified then
            filename = "* " .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename, guifg = "#8b0000" } }
        end,
      })
    end,
  },
}
