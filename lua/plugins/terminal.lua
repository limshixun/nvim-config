return {
	{"akinsho/toggleterm.nvim",
	version = "*",
	keys = {
		{"<space>tt", "<cmd>exe v:count1 . 'ToggleTerm'<cr>"},
		{"<space>tj", "<cmd>exe v:count1 . 'ToggleTerm size=20'<cr>"},
		{"<space>tk", "<cmd>exe v:count1 . 'ToggleTerm size=50'<cr>"},
		{"<space>T", "<cmd>ToggleTermToggleAll<cr>"},
	},
}
}

