local overseer = require("overseer")

overseer.register_template({
  name = "Clean Linux Kernel",
  builder = function()
    return {
      cmd = { "make" },
      args = { "mrproper" },
      components = {
        { "on_output_quickfix", open = true },
        "default",
      },
    }
  end
})
