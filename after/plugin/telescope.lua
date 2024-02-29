require("telescope").load_extension("project")
require("telescope").setup({
    defaults = {
        file_ignore_patterns = {"node%_modules/.*"},
    },
    extentions = {
        project = {
            base_dirs = {
                ".git"
            }
        }
    }
})
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set('n', 'C-p', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
