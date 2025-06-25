local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- maximize windows
-- see https://github.com/wezterm/wezterm/issues/3173#issuecomment-1722531883
wezterm.on("window-config-reloaded", function(window, _)
	local id = tostring(window:window_id())

	local seen = wezterm.GLOBAL.seen_windows or {}
	local is_new_window = not seen[id]
	seen[id] = true
	wezterm.GLOBAL.seen_windows = seen

	if is_new_window then
		window:maximize()
	end
end)

config.front_end = "Software"

config.color_scheme = "Catppuccin Mocha"

config.font = wezterm.font("monospace", { weight = "Medium" })
config.font_size = 16
config.freetype_load_flags = "NO_HINTING"

config.enable_tab_bar = false
config.window_content_alignment = {
	horizontal = "Center",
	vertical = "Center",
}
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
