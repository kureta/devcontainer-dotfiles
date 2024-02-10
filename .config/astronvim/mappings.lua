-- automatically pick-up stored data by this setting.)
return {
	-- first key is the mode
	n = {
		["<leader>fT"] = {
			":TodoTelescope<cr>",
			desc = "Todo Telescope",
		},
		["<leader>fu"] = {
			":Telescope undo<cr>",
			desc = "Undo Telescope",
		},
		-- We can define a prefix for a ategory of actions by not giving a command to run.
		["<leader>m"] = {
			desc = "Markdown",
		},
		["<leader>mm"] = {
			":Glow<cr>",
			desc = "Markdown Preview",
		},
	},
}
