return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<c-t>"] = require("telescope.actions").select_tab,
        },
      },
    },
  },
}
