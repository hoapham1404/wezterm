# WezTerm Configuration

My personal [WezTerm](https://wezfurlong.org/wezterm/) configuration.

WezTerm is a powerful cross-platform terminal emulator and multiplexer implemented in Rust, with GPU-accelerated rendering.

## Features

- **Color Scheme**: Dracula theme for a pleasant visual experience
- **Font**: JetBrains Mono for excellent code readability
- **Window Settings**: Semi-transparent background with minimal decorations
- **Custom Key Bindings**: Enhanced productivity with split pane shortcuts
- **Tab Bar**: Always visible tab bar for easy navigation

## Installation

### 1. Install WezTerm

First, install WezTerm on your system:

**macOS:**
```bash
brew install --cask wezterm
```

**Windows:**
```bash
winget install wez.wezterm
```

**Linux:**
```bash
# Ubuntu/Debian
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo apt update
sudo apt install wezterm

# Arch Linux
sudo pacman -S wezterm
```

### 2. Clone this repository

```bash
git clone https://github.com/hoapham1404/wezterm.git ~/.config/wezterm
```

> **Note**: If you want to customize this configuration for yourself, consider forking this repository first and then cloning your fork.

### 3. Restart WezTerm

Close and reopen WezTerm to apply the configuration.

## Configuration

The main configuration file is `wezterm.lua`. This file contains all the settings for WezTerm.

### Key Bindings

| Keys | Action |
|------|--------|
| `Ctrl+Shift+D` | Split pane horizontally |
| `Ctrl+Alt+D` | Split pane vertically |

### Customization

You can customize the configuration by editing `wezterm.lua`:

- **Color Scheme**: Change `config.color_scheme` to any available theme
- **Font**: Modify `config.font` and `config.font_size`
- **Opacity**: Adjust `config.window_background_opacity` (0.0 - 1.0)
- **Key Bindings**: Add or modify entries in `config.keys`

For a full list of available options, visit the [WezTerm documentation](https://wezfurlong.org/wezterm/config/files.html).

## Popular Color Schemes

WezTerm comes with many built-in color schemes. Some popular options:
- `Dracula` (default in this config)
- `Tokyo Night`
- `Catppuccin`
- `Nord`
- `Gruvbox`
- `One Dark`

To see available color schemes, visit the [WezTerm Color Schemes Gallery](https://wezfurlong.org/wezterm/colorschemes/index.html).

## Structure

```
.
├── wezterm.lua          # Main configuration file
├── README.md            # This file
├── LICENSE              # MIT License
└── .gitignore          # Git ignore file
```

## Resources

- [WezTerm Official Documentation](https://wezfurlong.org/wezterm/)
- [WezTerm GitHub Repository](https://github.com/wez/wezterm)
- [WezTerm Color Schemes](https://wezfurlong.org/wezterm/colorschemes/index.html)

## License

MIT License - see [LICENSE](LICENSE) file for details.
