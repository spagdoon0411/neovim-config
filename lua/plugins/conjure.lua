return {
	{
		"Olical/conjure",
		config = function()
			-- Disable the documentation mapping
			vim.g["conjure#mapping#doc_word"] = false

			-- Rebind it from K to <prefix>gk
			vim.g["conjure#mapping#doc_word"] = "gk"

			-- Reset it to the default unprefixed K (note the special table wrapped syntax)
			vim.g["conjure#mapping#doc_word"] = { "K" }
		end,
	},
}
