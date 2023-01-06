local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
-- vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>f', function()
	builtin.grep_string({ search = vim.fn.input("GREP > ") });
end)

-- vim.keymap.set('n', '<leader>f', function()
    -- return builtin.grep_string({search = vim.fn.expand("<cword>")})
-- end, {})
