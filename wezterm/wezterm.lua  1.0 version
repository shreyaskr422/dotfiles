-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- my coolnight colorscheme
config.colors = {
	foreground = "#CBE0F0",
	background = "#011423",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },

	-- Set custom bright colors
	brights = {
		"#38718C", -- Bright Black
		"#FF5E5E", -- Bright Red
		"#5AFFC1", -- Bright Green
		"#FFEC8B", -- Bright Yellow
		"#50D0FF", -- Bright Blue
		"#C299FF", -- Bright Magenta
		"#58F0FF", -- Bright Cyan
		"#FFFFFF", -- Bright White
	},
}

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 13

config.enable_tab_bar = false

config.window_decorations = "NONE"
config.window_background_opacity = 0.75
config.macos_window_background_blur = 70

-- Add padding around the terminal content
config.window_padding = {
	left = 20, -- Set padding in pixels
	right = 20,
	top = 20,
	bottom = 20,
}

-- Disable the confirmation prompt when closing the window
config.skip_close_confirmation_for_processes_named = {}

-- and finally, return the configuration to wezterm
return config
