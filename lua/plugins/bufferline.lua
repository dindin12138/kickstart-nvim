return {
  "akinsho/bufferline.nvim",
  event = { "BufReadPost", "BufNewFile" },
  dependencies = {
    { "famiu/bufdelete.nvim", cmd = "Bdelete" },
    { "nvim-tree/nvim-web-devicons", lazy = true },
  },
  opts = {
    options = {
      numbers = "ordinal",
      close_command = "Bdelete! %d",
      right_mouse_command = "Bdelete! %d",
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "center",
          padding = 1,
        },
      },
    },
  },
}
