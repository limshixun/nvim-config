return {
	{'nvim-telescope/telescope.nvim', version = "*",
	dependencies = {
		'BurntSushi/ripgrep',
		'sharkdp/fd',
		'nvim-lua/plenary.nvim',
		{'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },	
		{'nvim-tree/nvim-web-devicons', lazy = false, },
	},
	keys = {
		{"<space>fd", "<cmd>Telescope find_files<cr>"},
		{"<space>nc", function()
			require('telescope.builtin').find_files { cwd = vim.fn.stdpath("config")}
		end
		}
	},
	-- config = function()
	-- 	vim.keymap.set('n', "<space>fd", require('telescope.builtin').find_files)
	-- 	vim.keymap.set('n', "<space>nc", function() 
	-- 		require('telescope.builtin').find_files { cwd = vim.fn.stdpath("config")}
	-- 	end)	
	-- end
}
}
