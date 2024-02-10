return {
	colorscheme = "dracula",
	-- This function is run last and is a good place to configuring
	-- augroups/autocommands and custom filetypes also this just pure lua so
	-- anything that doesn't fit in the normal config locations above can go here
	-- lsp = {
 --    formatting = {
 --      disabled = {
 --        "pyright",
 --      },
 --    },
 --  },
	polish = function()
		-- create an augroup to easily manage autocommands
		vim.api.nvim_create_augroup("kureta", { clear = true })
		-- create a new autocmd
		vim.api.nvim_create_autocmd({
			"WinEnter",
			"CursorMoved",
			"CursorMovedI",
			"TextChanged",
			"TextChangedI",
		}, {
			desc = "Sync vim cursor position with pdf viewer position", -- nice description
			pattern = "*.tex",
			group = "kureta", -- add the autocmd to the newly created augroup
			callback = function()
				vim.cmd([[VimtexView]])
			end,
		})
	end,
}
