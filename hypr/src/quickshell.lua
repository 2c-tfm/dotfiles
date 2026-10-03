hl.layer_rule({
	name = "rofi",
	match = { namespace = "^rofi$" },
	animation = "layersIn",
	blur = true,
	dim_around = true,
})

hl.window_rule({
    name        = "quickshell-music-floating",
    match       = { title = "^quickshell-music$" },
    float       = true,
    move        = "50 monitor_h-440",
    border_size = 0,
    rounding    = 0,
    no_shadow   = true,
})

hl.window_rule({
    name        = "quickshell-calendar-floating",
    match       = { title = "^quickshell-calendar$" },
    float       = true,
    move        = "50 12",
    border_size = 0,
    rounding    = 0,
    no_shadow   = true,
})

hl.window_rule({
    name        = "quickshell-volume-floating",
    match       = { title = "^quickshell-volume$" },
    float       = true,
    move        = "50 monitor_h-170",
    border_size = 0,
    rounding    = 0,
    no_shadow   = true,
})

hl.window_rule({
    name        = "quickshell-wifi-floating",
    match       = { title = "^quickshell-wifi$" },
    float       = true,
    move        = "50 monitor_h-450",
    border_size = 0,
    rounding    = 0,
    no_shadow   = true,
})

hl.window_rule({
    name        = "quickshell-session-floating",
    match       = { title = "^quickshell-session$" },
    float       = true,
    border_size = 0,
    rounding    = 0,
    no_shadow   = true,
})

hl.window_rule({
    name        = "quickshell-launcher-floating",
    match       = { title = "^quickshell-launcher$" },
    float       = true,
    border_size = 0,
    rounding    = 0,
    no_shadow   = true,
})
