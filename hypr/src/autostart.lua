local globals = require("./src/globals")

hl.on("hyprland.start", function ()
	hl.exec_cmd("quickshell")

	-- sound servers
	hl.exec_cmd("pipewire")
	hl.exec_cmd("wireplumber")
	hl.exec_cmd("pipewire-pulse")

	-- notification manager
	hl.exec_cmd("mako")

	-- wallpaper
	hl.exec_cmd("awww-daemon --format xrgb")
	-- hl.exec_cmd("awww img " .. globals.wall_path)
	
	-- clipboard manager
	hl.exec_cmd("clipse -listen")

	hl.exec_cmd("dbus-update-activation-environment --all")
end) 
