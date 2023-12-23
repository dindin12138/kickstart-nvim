return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
  opts = {
    theme = "hyper",
    config = {
      -- stylua: ignore
      shortcut = {
        { desc = "󰒲 Lazy", group = "@property", action = "Lazy", key = "l" },
        { desc = " Find", group = "Label", action = "Telescope find_files", key = "f" },
        { desc = " Recent", group = "DiagnosticHint", action = "Telescope oldfiles", key = "o" },
        { desc = " Quit", group = "Number", action = "qa", key = "q" },
      },
    },
  },
}
