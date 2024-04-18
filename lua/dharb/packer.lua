vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use) -- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	use({ "catppuccin/nvim", as = "catppuccin" })
	use({ "rose-pine/neovim", as = "rose-pine" })
	use({ "rebelot/kanagawa.nvim" })

	use({
		"nvim-treesitter/nvim-treesitter",
		-- run = function()
		-- local ts_update = require('nvim-treesitter.install').updated({ with_sync = true })
		-- ts_update()
		-- end
	})
	use({ "nvim-treesitter/playground" })

	use("tpope/vim-fugitive")
	use("tpope/vim-commentary")

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ "williamboman/mason.nvim" }, -- Optional
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required

			-- Formatting (My choice)
			{ "jose-elias-alvarez/null-ls.nvim" }, -- Optional
		},
	})
end)
