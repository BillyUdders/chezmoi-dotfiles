local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

wezterm.on("gui-startup", function(cmd)
	local main_tab, main_pane, window = mux.spawn_window(cmd or {})
	main_pane:split({ size = 0.333 })

	local _, tp1, _ = window:spawn_tab({})
	tp1:split({ size = 0.5, direction = "Top" })

	main_tab:activate()

	window:gui_window():perform_action(wezterm.action.ToggleFullScreen, main_pane)
end)

tabline.setup({
	options = {
		icons_enabled = true,
		theme = "Nord (Gogh)",
		color_overrides = {},
		section_separators = {
			left = wezterm.nerdfonts.ple_right_half_circle_thick,
			right = wezterm.nerdfonts.ple_left_half_circle_thick,
		},
		component_separators = {
			left = wezterm.nerdfonts.ple_right_half_circle_thick,
			right = "",
		},
		tab_separators = {
			left = wezterm.nerdfonts.ple_right_half_circle_thick,
			right = wezterm.nerdfonts.ple_left_half_circle_thick,
		},
	},
	sections = {
		tabline_a = { "mode" },
		tabline_b = { "workspace" },
		tabline_c = { " " },
		tab_active = {
			"index",
			{ "parent", padding = 0 },
			"/",
			{ "cwd", padding = { left = 0, right = 1 } },
			{ "zoomed", padding = 0 },
		},
		tab_inactive = { "index", { "process", padding = { left = 0, right = 1 } } },
		tabline_x = { "ram", "cpu" },
		tabline_y = { "datetime", "battery" },
		tabline_z = { "hostname" },
	},
	extensions = {},
})

config.keys = {
	{ key = "RightArrow", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Next" }) },
	{ key = "LeftArrow", mods = "CMD", action = wezterm.action({ ActivatePaneDirection = "Prev" }) },
}

config.native_macos_fullscreen_mode = true
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.95
config.color_scheme = "Nord (Gogh)"
config.font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = true })
config.font_size = 13
config.line_height = 1.1
wezterm.default_prog = { "/usr/local/bin/fish", "-l" } -- adjust path to fish

tabline.apply_to_config(config)

return config
