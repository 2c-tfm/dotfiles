hl.config({
	general = {
		allow_tearing = false,
		border_size = 1, 
		gaps_in = 3,
		gaps_out = 5,
		locale = "en_US",
	},

	decoration = {
		inactive_opacity = 0.9,
		shadow = {
			enabled = true,
		}, 
		motion_blur = {
			enabled = true,
			samples = 32
		},
	},

	animations = {
		enabled = true
	},

	input = {
		kb_layout = us,
		follow_mouse = 1,		-- don't follow
		repeat_delay = 300,
		repeat_rate = 50,
		mouse_refocus = false,

		touchpad = {
			disable_while_typing = true,
			tap_to_click = true
		}
	}, 

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		force_default_wallpaper = 0,
		allow_session_lock_restore = true,
		always_follow_on_dnd = true,		-- set this to false for focus issues
	},
	xwayland = {
		force_zero_scaling = true,
	},
})

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace"
})

