local wezterm = require("wezterm")
return {
	adjust_window_size_when_changing_font_size = false,
	--	color_scheme = "termnial.sexy",
	--color_scheme = "Catppuccin Mocha",
	color_scheme = "Everforest Light (Gogh)",
	--color_scheme = "nightfox",
	--color_scheme = "terafox",
	--color_scheme = "rose-pine-dawn",
	--color_scheme = "solarized-osaka",
	-- color_scheme = "Papercolor Dark (Gogh)",
	-- color_scheme = "Everforest Dark Soft (Gogh)",

	enable_tab_bar = false,
	font_size = 12.0,
	font = wezterm.font("JetBrains Mono"),
	-- macos_window_background_blur = 40,
	-- macos_window_background_blur = 30,

	--window_background_image = "/home/moon/Shrey/Pictures/rename.jpg",
	--  window_background_image_hsb = {
	-- >brightness = 0.1,
	-- >hue = 1.0,
	-- >saturation = 1.0,
	--},
	-- window_background_opacity = 0.92,
	window_background_opacity = 1.0,
	-- window_background_opacity = 0.78,
	-- window_background_opacity = 0.20,
	window_decorations = "NONE",
	window_padding = {
		left = 25,
		right = 25,
		top = 25,
		bottom = 25,
	},

	keys = {
		{
			key = "q",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
		{
			key = "'",
			mods = "CTRL",
			action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
		},
	},
	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
