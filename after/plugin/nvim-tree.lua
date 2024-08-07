-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    on_attach = on_attach,
--    view = {
--       adaptive_size = true,
--        mappings = {
--        list = {
--            { key = "u", action = "dir_up" },
--        },
--        },
--    },
    renderer = {
        group_empty = true,
        icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = false,
                git = false,
            },
        },
    },
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
    filters = {
        dotfiles = true,
    },
})

vim.keymap.set("n", "<leader><tab>", vim.cmd.NvimTreeToggle)
-- vim.keymap.set("n", "<leader><esc>", vim.cmd.NvimTreeClose)
