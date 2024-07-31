return require("packer").startup(function()
	-- 插件管理器
	use("wbthomason/packer.nvim")

	-- 搜索文件
	use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                          , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- 文件浏览器
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
		--	"nvim-tree/nvim-web-devicons", 
		}
	})


	-- https://github.com/VonHeikemen/lsp-zero.nvim
    use {
        'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',

        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
--    use {
--        'VonHeikemen/lsp-zero.nvim',
--        requires = {
--            -- LSP Support
--            {'neovim/nvim-lspconfig'},
--            {'williamboman/mason.nvim'},
--            {'williamboman/mason-lspconfig.nvim'},
--
--            -- Autocompletion
--            {'hrsh7th/nvim-cmp'},
--            {'hrsh7th/cmp-buffer'},
--            {'hrsh7th/cmp-path'},
--            {'saadparwaiz1/cmp_luasnip'},
--            {'hrsh7th/cmp-nvim-lsp'},
--            {'hrsh7th/cmp-nvim-lua'},
--
--            -- Snippets
--            {'L3MON4D3/LuaSnip'},
--            {'rafamadriz/friendly-snippets'},
--        }
--    }

    use { 'fatih/vim-go' }


	-- 窗口美化
    use { 'EdenEast/nightfox.nvim'}
	--use {'ellisonleao/gruvbox.nvim'}

    -- git
    -- https://github.com/f-person/git-blame.nvim
    use {'f-person/git-blame.nvim'}

	-- 浮动窗
	-- https://github.com/voldikss/vim-floaterm
	use { 'voldikss/vim-floaterm' }
end)
