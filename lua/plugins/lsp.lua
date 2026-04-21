return {
	{'neovim/nvim-lspconfig',
	config = function()
		-- lua lsp
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
		-- web component lsp
		vim.lsp.config('wc_language_server', {
			cmd = {'wc-language-server', '--stdio'},
			filetypes = { "html", "javascriptreact", "typescriptreact", "astro", "svelte", "vue", "markdown", "mdx", "javascript", "typescript", "css", "scss", "less" },
			init_options = {hostInfo = "neovim"},
			root_markers = { "wc.config.js", "wc.config.ts", "wc.config.mjs", "wc.config.cjs", "custom-elements.json", "package.json", ".git" }
		})
		vim.lsp.enable('wc_language_server')
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
