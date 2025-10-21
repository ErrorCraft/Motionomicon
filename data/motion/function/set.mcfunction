execute at @s run function motion:set/reset_motion
$execute at @s run function motion:apply {x: $(x), y: $(y), z: $(z), rotation: "0 0"}
