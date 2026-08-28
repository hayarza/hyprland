# hyprland

Here go Hernan's hyprland configs, for [Omarchy](https://omarchy.org) 4
("Quattro") and later. Quattro moved Hyprland's config from `.conf` to Lua,
so everything here is Lua now — see [the Hyprland
wiki](https://wiki.hypr.land/Configuring/Start/) and `omarchy` docs.

## Layout

| file | what it does |
|---|---|
| `hyprland.lua` | Entry point. Loads Omarchy's defaults, then the files below. |
| `monitors.lua` | Displays. DP-1 is pinned to `1920x1080@144` — `preferred` picks 60Hz on that panel. |
| `bindings.lua` | Personal keybindings only. Omarchy ships most app/webapp bindings as defaults. |
| `input.lua` | Keyboard/mouse. Only `repeat_delay`; the rest matches Omarchy's defaults. |
| `looknfeel.lua` | Appearance overrides. Deliberately thin — colors and gaps come from the theme. |
| `autostart.lua` | Startup processes. Currently stock. |
| `hyprsunset.conf` | Night light. Read by hyprsunset, not Hyprland. |
| `xdph.conf` | Screen sharing portal. Read by xdg-desktop-portal-hyprland. |
| `.luarc.json` | Lua LSP config so `hl` and `o` resolve while editing. |

Omarchy's own defaults live in `/usr/share/omarchy/default/hypr/` — read them,
never edit them. User files load after, so anything here wins.

## Applying changes

Hyprland auto-reloads the `.lua` files on save. Always validate:

```bash
hyprctl reload && hyprctl configerrors
```

The two `.conf` files are read by other processes and `hyprctl` neither applies
nor validates them — use `omarchy restart hyprsunset` for night light; the
portal picks up `xdph.conf` on next login.

`rounding` and `gaps_out` are mirrored by the Omarchy shell, which reads them
via `hyprctl` at startup and on theme change. After changing either, run
`omarchy restart shell` or the bar and notifications will disagree with your
windows.

Reset any file to Omarchy's shipped default with:

```bash
omarchy refresh config hypr/looknfeel.lua
```

## Notes

Idle and lock are **not** configured here anymore. `hypridle` and `hyprlock`
aren't part of Quattro; both are Quickshell plugins now, set via `idle.screensaver`
and `idle.lock` in `~/.config/omarchy/shell.json`.

Pre-Quattro `.conf` originals are archived in `backups/` (gitignored) and remain
in git history before `4d6e878`.
