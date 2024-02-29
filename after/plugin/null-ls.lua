local null_ls = require("null-ls")

local group = vim.api.nvim_create_augroup("lsp_format_on_save", { clear = false })
local event = "BufWritePre" -- or "BufWritePost"
local async = event == "BufWritePost"

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier
    }
})

local lspconfig = require("lspconfig")

vim.g.autoformat = false
vim.g.zig_fmt_autosave = 0

lspconfig.tsserver.setup({
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
    end,
})
