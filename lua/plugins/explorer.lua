return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", "nvim-mini/mini.nvim" },
    lazy = false,
    keys = {
      {
        "<space><Tab>",
        function()
			local oil = require("oil")
			oil.toggle_float(nil, {preview = { vertical = true}})
        end,
        desc = "Toggle Oil in vsplit",
      },
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
		is_always_hidden = function(name, _)
			return name == ".."
		end,
      },
	  float = {
		  padding = 2,
		  max_width = 0.7,
		  preview_split = "right",
		  border = "rounded",
	  },
	  preview_win = {
		  update_on_cursor_move = true,
	  },
    },
  },
}



