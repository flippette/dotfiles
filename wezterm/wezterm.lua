local wezterm = require("wezterm")

-- maximize windows on startup
wezterm.on("gui-startup", function(cmd)
	local _, _, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return {
	color_scheme = "Catppuccin Mocha",

	font = wezterm.font("monospace", { weight = "Medium" }),
	font_size = 14.5,
	freetype_load_flags = "NO_HINTING",

	enable_tab_bar = false,
	window_content_alignment = {
		horizontal = "Center",
		vertical = "Center",
	},
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
}
