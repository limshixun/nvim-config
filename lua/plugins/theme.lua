return {
	{"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme tokyonight]])
	end,
	},
	{"nvim-tree/nvim-web-devicons",
	lazy = false,
	opts = {}
	}
}

