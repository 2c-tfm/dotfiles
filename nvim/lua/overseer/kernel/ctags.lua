local overseer = require("overseer")

overseer.register_template({
  name = "Generate Linux Kernel tags",
  builder = function()
    return {
      cmd = { "make" },
      args = { "cscope" },
      components = {
        { "on_output_quickfix", open = true },
        "default",
      },
    }
  end
})
