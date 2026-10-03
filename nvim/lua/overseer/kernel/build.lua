local overseer = require("overseer")

overseer.register_template({
  name = "Build kernel image",
  builder = function()
    return {
      strategy = {
        "orchestrator",
        tasks = {
          { "make", args = { "defconfig" } },
          { "make", args = { "-j8" } },
        },
      },
    }
  end,
})
