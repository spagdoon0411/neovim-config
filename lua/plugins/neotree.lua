return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = function()
			vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", {})
		end,
		event_handlers = {
			{
				event = "file_opened",
				handler = function(file_path)
					-- auto close
					-- vimc.cmd("Neotree close")
					-- OR
					require("neo-tree").close_all()
				end,
			},
		},
	},
}
