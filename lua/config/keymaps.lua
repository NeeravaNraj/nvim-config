-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local snacks = require("snacks")
vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
vim.keymap.set("t", "<C-t>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })

vim.keymap.set("n", "<C-b>", function()
  snacks.explorer()
end, { desc = "Toggle File Explorer" })

vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, {
  desc = "Show Diagnostics",
})

vim.keymap.set("n", "<leader>pf", function()
  require("snacks").picker.files({
    cwd = vim.fn.getcwd(),
  })
end, { desc = "Find Files (cwd)" })

-- vim.keymap.set("n", "<leader>rp", function()
--   require("snacks").picker.recent()
-- end, { desc = "Recent Projects / Files" })

vim.keymap.set("n", "<leader>wd", function()
  require("snacks").picker.diagnostics()
end, { desc = "Workspace Diagnostics" })

vim.keymap.set("n", "<leader>pg", function()
  require("snacks").picker.grep({ cwd = vim.fn.getcwd() })
end, { desc = "Live Grep (cwd)" })

vim.keymap.set("n", "<leader>rp", function()
  require("snacks").picker.projects()
end, { desc = "Projects" })

vim.keymap.set("n", "<leader>mp", function()
  require("snacks").picker.man()
end, { desc = "Man Pages" })

vim.keymap.set("n", "<leader>f", "<cmd>Prettier<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
