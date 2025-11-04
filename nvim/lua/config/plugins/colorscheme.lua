return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "mocha", --frappe, macchiato, mocha, latte
	},
	config = function()
		vim.cmd.colorscheme("catppuccin-mocha")
	end,
}
