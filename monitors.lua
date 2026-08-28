-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- List current monitors and supported resolutions with: hyprctl monitors all

local omarchy_gdk_scale = 1
local omarchy_monitor_scale = 1

hl.env("GDK_SCALE", tostring(omarchy_gdk_scale))

-- Catch-all fallback for any monitor without a specific rule below.
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = "auto" })

-- Microstep MP271 E14A -- pin 144Hz; "preferred" picks 60Hz on this panel.
hl.monitor({ output = "DP-1", mode = "1920x1080@144", position = "0x0", scale = omarchy_monitor_scale })

-- Portrait/rotated secondary monitor (transform: 1 = 90deg, 3 = 270deg).
-- hl.monitor({ output = "DP-2", mode = "preferred", position = "auto", scale = 1, transform = 1 })
