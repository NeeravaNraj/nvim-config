return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      -- ensure structure exists
      opts.picker = opts.picker or {}
      opts.picker.sources = opts.picker.sources or {}
      opts.picker.sources.explorer = opts.picker.sources.explorer or {}

      opts.picker.sources.explorer.win =
        opts.picker.sources.explorer.win or {}
      opts.picker.sources.explorer.win.list =
        opts.picker.sources.explorer.win.list or {}
      opts.picker.sources.explorer.win.list.keys =
        opts.picker.sources.explorer.win.list.keys or {}

      opts.picker.sources.explorer.win.list.keys["<c-t>"] = false
      opts.picker.sources.explorer.win.list.keys["<c-b>"] = "close"

      opts.picker.sources.explorer.hidden = true
      opts.picker.sources.explorer.ignored = true

      opts.animate = { enabled = false }
      opts.scroll = { enabled = false }
      opts.indent = opts.indent or {}
      opts.indent.animate = { enabled = false }

      opts.terminal = {
        enabled = false,
      }
    end,
  },
}
