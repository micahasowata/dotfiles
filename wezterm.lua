local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.show_tab_index_in_tab_bar = false

config.hide_tab_bar_if_only_one_tab = true

config.color_scheme = "Catppuccin Macchiato"

config.enable_scroll_bar = true

config.enable_tab_bar = false

config.window_decorations = "RESIZE"

config.window_padding = {
	left = 2,
	right = 2,
	top = 0,
}

-- replace with the absolute path to your background image
config.window_background_image = "/home/micah/dontdelete/bg.jpg"

config.window_background_image_hsb = {
	brightness = 0.1,

	hue = 0.8,

	saturation = 0.9,
}

config.default_cursor_style = "BlinkingUnderline"

return config
