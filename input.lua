-- https://wiki.hypr.land/Configuring/Basics/Variables/#input
--
-- Omarchy's defaults already cover everything from the old input.conf:
-- kb_options compose:caps, repeat_rate 40, numlock_by_default, touchpad
-- scroll_factor 0.4, and the per-terminal scroll_touchpad window rules.
-- Only the repeat delay differs from stock (Omarchy uses 250).

hl.config({
  input = {
    repeat_delay = 600,
  },
})

-- Razer Viper V2 Pro: tone down pointer speed (-1.0 .. 1.0, 0 = default)
hl.device({
  name = "razer-razer-viper-v2-pro-1",
  sensitivity = -0.4,
})
