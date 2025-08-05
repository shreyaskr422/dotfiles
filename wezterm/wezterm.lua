-----------------------Colorscheme

local wezterm = require("wezterm")
return {
	adjust_window_size_when_changing_font_size = false,
	-- color_scheme = "Everforest Light (Gogh)",
	-- color_scheme = "Kanagawa Dragon (Gogh)",
	-- color_scheme = "Papercolor Light (Gogh)",
	-- color_scheme = "Everforest Dark Soft (Gogh)",
	-- color_scheme = "Dracula+",
	-- color_scheme = "duckbones", --Dark contrast
	-- color_scheme = "Django",    --Little Dark color_scheme = "DjangoSmooth", --little Light and little pleasing to see
	-- color_scheme = "rose-pine-dawn",
	color_scheme = "Gruvbox light, soft (base16)",
	-- color_scheme = "Gruvbox dark, soft (base16)",
	----------------------- Font

	enable_tab_bar = false,
	font_size = 12.0,
	font = wezterm.font("Anonymous Pro"),
	-- font = wezterm.font("SFMono Nerd Font"), --{ weight = "Medium", italic = true }),
	front_end = "OpenGL",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	-- macos_window_background_blur = 40,
	-- macos_window_background_blur = 30,

	-------------------------------- background or Overlay image

	--window_background_image = "/home/moon/Shrey/Pictures/rename.jpg",
	--  window_background_image_hsb = {
	-- >brightness = 0.1,
	-- >hue = 1.0,
	-- >saturation = 1.0,
	--},

	---------------------------------- Curser

	default_cursor_style = "SteadyBlock",

	-- window_background_opacity = 0.92,
	window_background_opacity = 0.8,
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
