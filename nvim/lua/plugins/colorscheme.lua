return {
	{ "sainnhe/everforest", lazy = false },
	-- Configure LazyVim to load colorscheme

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "everforest",
			priority = 1000, -- Change to your preferred colorscheme
			transparent = true, -- Enable transparent background
		},
	},
}
