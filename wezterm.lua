local wezterm = require 'wezterm'

wezterm.on('gui-startup', function(cmd)
	local _, _, window = wezterm.mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end


-- Color scheme
config.color_scheme = 'Rosé Pine Dawn (base16)'
--
-- Font
config.font = wezterm.font_with_fallback({
	{ family = "JetBrains Mono", weight = "Bold", italic = true },
})
config.font_size = 14.0
config.line_height = 1.1
config.cell_width = 1.0
config.harfbuzz_features = { "calt=0", "liga=0" }

-- Window configuration
config.window_background_opacity = 0.85
config.window_decorations = "RESIZE"

config.window_padding = {
	left = 14.0,
	right = 0,
	top = 5,
	bottom = 0,
}

-- Tab bar
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false

-- Cursor
config.default_cursor_style = 'SteadyBlock'
config.cursor_blink_rate = 800

-- Keys
config.keys = {
	-- Split pane keybindings using the same key with different modifiers
	-- This is a common pattern in terminal multiplexers
	{
		key = 'd',
		mods = 'CTRL|SHIFT',
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
	},
	{
		key = 'd',
		mods = 'CTRL|ALT',
		action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
	},
}

-- and finally, return the configuration to wezterm
return config
