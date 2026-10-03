local mainmod = "SUPER"
local terminal = "kitty"
local launcher = "rofi -show drun -theme ~/.config/rofi/bar.rasi"

hl.bind(mainmod .. "+ return", hl.dsp.exec_cmd(terminal))
hl.bind(mainmod .. "+ Q", hl.dsp.window.close())
hl.bind(mainmod .. "+ SHIFT + Q", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2&>1 && hyprshutdown || hypr dispatch 'hl.dsp.exit()'"))
hl.bind(mainmod .. "+ D", hl.dsp.exec_cmd(launcher))
hl.bind(mainmod .. "+ F", hl.dsp.window.fullscreen())
hl.bind(mainmod .. "+ SHIFT + F", hl.dsp.window.float({ action = "toggle" }))

-- Move focus with mainMod + arrow keys
hl.bind(mainmod .. " + J",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainmod .. " + semicolon", hl.dsp.focus({ direction = "right" }))
hl.bind(mainmod .. " + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainmod .. " + L",  hl.dsp.focus({ direction = "down" }))

-- Move window with mainMod + arrow keys
hl.bind(mainmod .. "+ SHIFT + J",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainmod .. "+ SHIFT  + semicolon", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainmod .. "+ SHIFT  + K",    hl.dsp.window.move({ direction = "up" }))
hl.bind(mainmod .. "+ SHIFT  + L",  hl.dsp.window.move({ direction = "down" }))

-- resizing window with mainmod + jkl;
local step = 20
hl.bind(mainmod .. "+ R", hl.dsp.submap("resize"))
hl.define_submap ("resize", function()
	hl.bind("K", hl.dsp.window.resize({x = 0, y = step, relative = true }), {repeating = true, submap = "resize"})
	hl.bind("J", hl.dsp.window.resize({x = -step, y = 0, relative = true }), {repeating = true, submap = "resize"})
	hl.bind("semicolon", hl.dsp.window.resize({x = step, y = 0, relative = true }), {repeating = true, submap = "resize"})
	hl.bind("L", hl.dsp.window.resize({x = 0, y = -step, relative = true }), {repeating = true, submap = "resize"})

	hl.bind("ESCAPE", hl.dsp.submap("reset"))
	hl.bind("RETURN", hl.dsp.submap("reset"))
end)

-- resizing and moving a window
hl.bind(mainmod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainmod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainmod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainmod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerct
hl.bind("Insert",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("Home", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("End",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

hl.bind("XF86Favorites",  hl.dsp.exec_cmd("hyprlock"))
hl.bind("XF86Launch5",  hl.dsp.exec_cmd("screenshot"))
