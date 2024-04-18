require('rose-pine').setup({
	styles = {
		italic = false,
		bold = true,
	},
	highlight_groups = {
		ColorColumn = { bg = 'rose' },

		-- Blend colours against the "base" background
		CursorLine = { bg = 'foam', blend = 10 },
		StatusLine = { fg = 'love', bg = 'love', blend = 10 },
	},
	headings = "subtle",
	enable = {
		terminal = true,
	},
})


require('kanagawa').setup({
	keywordStyle = { italic = false },
	commentStyle = { italic = false },
})

-- vim.cmd('colorscheme rose-pine');
-- vim.cmd('colorscheme dracula');
vim.cmd('colorscheme kanagawa-dragon');
