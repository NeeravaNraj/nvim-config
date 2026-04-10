return {
  {
    "folke/tokyonight.nvim",
    opts = function(_, opts)
      opts.on_highlights = function(hl, c)
        hl.NormalFloat = { bg = c.bg_float, fg = c.fg }
        hl.FloatBorder = { fg = c.blue, bg = c.bg_float }
      end
      return opts
    end,
  },
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
      views = {
        mini = { win_options = { winblend = 0 } },
      },
    },
  },
}
