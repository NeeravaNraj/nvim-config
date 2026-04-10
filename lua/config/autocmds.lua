-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      vim.schedule(function()
        vim.cmd("enew")
        require("snacks").explorer()
      end)
    end
  end,
})

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  callback = function()
    if vim.bo.modified then
      vim.cmd("silent write")
    end
  end,
})

vim.api.nvim_create_user_command("LspRestart", function()
  vim.lsp.stop_client(vim.lsp.get_clients())
  vim.cmd("edit")
end, { desc = "Restart all LSP clients" })

require("bufferline").setup({
  options = {
    show_buffer_icons = true,
    show_buffer_close_icons = true,
    always_show_bufferline = true,
    offsets = {
      {
        filetype = "snacks_layout_box",
        text = "Explorer",
        highlight = "Directory",
        separator = true,
      },
    },
  },
})
