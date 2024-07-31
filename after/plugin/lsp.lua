local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  },
})


-- require('lspconfig').tsserver.setup({})
-- require('lspconfig').rust_analyzer.setup({})
require('lspconfig').gopls.setup({})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})

vim = vim

vim.keymap.set("n", "<leader>d", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>k", function() vim.lsp.buf.hover() end)
vim.api.nvim_set_keymap('n', '<leader>dp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dn', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })



--local lsp = require('lsp-zero')
--lsp.extend_lspconfig()
--
--lsp.preset('recommended')
--
--lsp.setup()
--
--
--require 'lspconfig'.lua_ls.setup {
--    settings = {
--        Lua = {
--            runtime = {
--                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--                version = 'LuaJIT',
--            },
--            diagnostics = {
--                -- Get the language server to recognize the `vim` global
--                globals = { 'vim' },
--            },
--            workspace = {
--                -- Make the server aware of Neovim runtime files
--                library = vim.api.nvim_get_runtime_file("", true),
--            },
--            -- Do not send telemetry data containing a randomized but unique identifier
--            telemetry = {
--                enable = false,
--            },
--        },
--    },
--}

--local cmp = require('cmp')
--local cmp_action = require('lsp-zero').cmp_action()
--cmp.setup({
--  mapping = cmp.mapping.preset.insert({
--    -- `Enter` key to confirm completion
--    ['<CR>'] = cmp.mapping.confirm({select = false}),
--
--    -- Ctrl+Space to trigger completion menu
--    ['<C-Space>'] = cmp.mapping.complete(),
--
--    -- Navigate between snippet placeholder
--    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
--    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
--
--    -- Scroll up and down in the completion documentation
--    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
--    ['<C-d>'] = cmp.mapping.scroll_docs(4),
--  })
--})

--vim.keymap.set('n','<leader>d',function() vim.lsp.buf.definition() end)
--vim.keymap.set('n', '<leader>r', function() vim.lsp.buf.references() end)

--vim.cmd [[autocmd BufWritePre *    "lua vim.lsp.buf.format()"]]
