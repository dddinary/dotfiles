return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    require("telescope").load_extension("file_browser")
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
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = false,
      mappings = {
      },
    },
  },
}
