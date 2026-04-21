return {
	{'neovim/nvim-lspconfig',
	config = function()
		vim.lsp.config('lua_ls', {
			cmd = {'lua-language-server' },
			filetypes = {'lua'},
			root_markers = {{ '.luarc.json', '.luarc.jsonc' }, '.git' },
			settings = {
				Lua = {
					runtime = {
						version = 'LuaJIT',
					}
				}
			}
		})
		vim.lsp.enable('lua_ls')
	end
},
	{'hrsh7th/nvim-cmp'},
{
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
}
