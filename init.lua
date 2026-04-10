-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.diagnostic.config({
  float = {
    border = "rounded", -- "single", "double", "rounded", "solid", "shadow"
    source = "if_many", -- show source only if multiple
    header = "",
    prefix = "",
    focusable = false,
    style = "minimal",
  },
})
