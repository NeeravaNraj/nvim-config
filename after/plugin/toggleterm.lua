require("toggleterm").setup{
    size = 20,
    open_mapping = [[<C-t>]],
    hide_numbers = true,
    direction = "float",
    auto_scroll = true,
    close_on_exit = true,
    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal"
        }
    }
}



