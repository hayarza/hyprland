-- Personal keybinding overrides. Loaded after Omarchy's defaults.
--
-- See current bindings and descriptions:
--   omarchy menu keybindings --print
--
-- Most of the old bindings.conf is now shipped by Omarchy itself (terminal,
-- tmux, browser, editor, Spotify, cliamp, lazydocker, Signal, Obsidian,
-- 1Password, ChatGPT, Grok, HEY mail/calendar, YouTube, WhatsApp, Google
-- Messages, X). Only the genuinely personal bits are kept here.

-- File manager: nemo instead of Omarchy's default nautilus.
hl.unbind("SUPER + SHIFT + F")
o.bind("SUPER + SHIFT + F", "File manager", { launch = "nemo" })

-- Activity monitor. SUPER+SHIFT+T is unbound in Omarchy's defaults.
o.bind("SUPER + SHIFT + T", "Activity", { tui = "btop" })

-- Lockscreen. Note: this takes SUPER+L away from Omarchy's default
-- "Toggle workspace layout" (omarchy-hyprland-workspace-layout-toggle).
hl.unbind("SUPER + L")
o.bind("SUPER + L", "Lockscreen", "omarchy-system-lock")

-- Workspace switching on CTRL+SHIFT+arrows, alongside Omarchy's SUPER+TAB.
o.bind("CTRL + SHIFT + LEFT", "Previous workspace", hl.dsp.focus({ workspace = "e-1" }))
o.bind("CTRL + SHIFT + RIGHT", "Next workspace", hl.dsp.focus({ workspace = "e+1" }))
o.bind("CTRL + SHIFT + UP", "Previous workspace", hl.dsp.focus({ workspace = "e-1" }))
o.bind("CTRL + SHIFT + DOWN", "Next workspace", hl.dsp.focus({ workspace = "e+1" }))
