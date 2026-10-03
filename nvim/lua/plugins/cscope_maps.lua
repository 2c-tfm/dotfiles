return {
  "dhananjaylatkar/cscope_maps.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "ibhagwan/fzf-lua",
    "echasnovski/mini.pick",
    "folke/snacks.nvim",
  },
  config = function()
    require("cscope_maps").setup({
      disable_maps = false,
      cscope = {
        db_file = "./cscope.out",
        exec = "cscope",
        picker = "telescope",
      }
    })
  end,
}
