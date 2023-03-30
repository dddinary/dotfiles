return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local actions = require "telescope.actions"
    return require("astronvim.utils").extend_tbl(opts, {
      defaults = {
        mappings = {
            i = {
                ["<c-w>"] = actions.delete_buffer
            },
            n = {
                ["<c-w>"] = actions.delete_buffer
            },
        },
      },
    })
  end,
}
