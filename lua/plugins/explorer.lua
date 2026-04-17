return {
	{"stevearc/oil.nvim",
	dependencies = {"nvim-tree/nvim-web-devicons" },
	lazy = false,
	keys = 
	{
		{
			"<F1>",
			function()
				vim.cmd("vsplit | wincmd l | vertical resize -30")
				require("oil").open()
			end,
			mode = {'n','t','i'},
			desc = 'Open Oil in vsplit'
		}
	},
	opts = {
		default_file_explorer = true,
		columns = {
			"icon",
			"permissions",
			"size",
		},
		view_options = {
			show_hidden = true,
		}
	}
}
}
