vim.g.mapleader = " "
local silent = { silent = true }
local function open_nvim_tree(data)
    -- buffer is a directory
    local directory = vim.fn.isdirectory(data.file) == 1
if not directory then
        return
    end
    -- create a new, empty buffer
    vim.cmd.enew()

    -- wipe the directory buffer
    vim.cmd.bw(data.buf)

    -- change to the directory
    vim.cmd.cd(data.file)

    -- open the tree
    require("nvim-tree.api").tree.open()
end
vim.keymap.set("n", "<leader>vd", "<cmd>lua vim.diagnostic.open_float()<CR>")
vim.keymap.set("n", "<leader>wd", "<cmd>Telescope diagnostics<CR>")
vim.keymap.set("n", "<leader>f", "<cmd>Prettier<CR>")
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>")
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
vim.keymap.set("n", "<leader>rp", "<cmd>Telescope project<CR>")
vim.keymap.set("n", "<C-_>", "<cmd>CommentToggle<CR>")
vim.keymap.set("i", "<C-_>", "<cmd>CommentToggle<CR>")
vim.keymap.set("v", "<C-_>", "<cmd>'<,'>CommentToggle<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>")
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<CR>")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)
vim.keymap.set("n", "<leader>o", "<cmd>bd<CR>", silent)


vim.keymap.set("n", "<C-h>", "<C-w><Left>", silent)
vim.keymap.set("n", "<C-l>", "<C-w><Right>", silent)
vim.keymap.set("n", "<C-k>", "<C-w><Up>", silent)
vim.keymap.set("n", "<C-j>", "<C-w><Down>", silent)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
vim.keymap.set("n", "<C-z>", "<nop>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/neerava/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
vim.keymap.set("n", "<C-b>", function()
    require("nvim-tree.api").tree.toggle({
        update_root=true
    })
end)

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm size=20 direction=float<CR>");
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=20 direction=horizontal<CR>");
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<CR>");
vim.keymap.set("t", "<esc>", "<cmd>ToggleTerm<CR>")
vim.keymap.set("t", "<C-n>", [[<C-\><C-n>]]);

vim.keymap.set("n", "<F5>", ":lua require 'dap'.continue()<CR>")
vim.keymap.set("n", "<F10>", ":lua require 'dap'.step_over()<CR>")
vim.keymap.set("n", "<F11>", ":lua require 'dap'.step_into()<CR>")
vim.keymap.set("n", "<F12>", ":lua require 'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>bp", ":lua require 'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require 'dap'.repl.open()<CR>")
vim.keymap.set("n", "<leader>dl", ":lua require 'dap'.run_last()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>cg", ":ChatGPT<CR>")
