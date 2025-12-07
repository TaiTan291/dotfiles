return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
		},
		config = function()
			require("lspconfig")
			vim.lsp.config.tinymist = {
				settings = {
					formatterMode = "typstyle",
					exportPdf = "onType",
					semanticTokens = "disable"
				}
			},
			vim.lsp.enable('tinymist')
		end,
	},
}
