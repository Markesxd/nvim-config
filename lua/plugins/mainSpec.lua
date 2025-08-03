return {
	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		dependencies = {
			{ "ms-jpq/coq_nvim", branch = "coq" },
		},
		init = function()
			vim.g.coq_settings = {
				auto_start = true,
			}
		end,
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
	},
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"mfussenegger/nvim-jdtls",
		"nvim-treesitter/nvim-treesitter"
	},
	{
		"tpope/vim-fugitive"
	}
}
