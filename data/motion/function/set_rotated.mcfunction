execute at @s run function motion:set/reset_motion
$execute at @s run function motion:apply {x: $(left), y: $(up), z: $(forwards), rotation: "~ ~"}
