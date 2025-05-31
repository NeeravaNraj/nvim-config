vim.o.guifont = "Hack:h12"
require("neerava.remap")
require("neerava.set")

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function()
    vim.diagnostic.config({
        underline = true,  -- Enable underlines
        virtual_text = false,  -- Disable inline text (optional)
        virtual_lines = false,
        signs = true,  -- Keep signs in the sign column
        update_in_insert = false,  -- Don't update diagnostics while typing
    })
  end,
})

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = "rounded"  -- Options: "single", "double", "shadow", "none"
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end
