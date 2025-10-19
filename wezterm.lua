-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- Color scheme
config.color_scheme = 'Dracula'

-- Font configuration
config.font = wezterm.font('JetBrains Mono', { weight = 'Regular' })
config.font_size = 12.0

-- Window configuration
config.window_background_opacity = 0.95
config.window_decorations = "RESIZE"
config.window_padding = {
  left = 2,
  right = 2,
  top = 0,
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
