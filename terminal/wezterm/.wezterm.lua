-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha" --macchiato, frappe, mocha, latte

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16

config.enable_tab_bar = false

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	local gui_window = window:gui_window()

	-- Get screen dimensions
	local screen = wezterm.gui.screens().active
	local width = screen.width * 0.8
	local height = screen.height * 0.8

	-- Center the window
	local x = (screen.width - width) / 2
	local y = (screen.height - height) / 2

	gui_window:set_position(x, y)
	gui_window:set_inner_size(width, height)
end)

config.keys = {
	{ key = "C", mods = "SUPER|SHIFT", action = wezterm.action.CopyTo("Clipboard") },
	{ key = "V", mods = "SUPER|SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
}

config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.95
config.macos_window_background_blur = 10

return config
