$data modify storage motion:data enchant_data.exponent set value $(exponent)
$scoreboard players operation actual MotionData = $(axis) MotionData
$scoreboard players operation actual MotionData /= $(amount) MotionData
execute if score actual MotionData matches ..-1 run scoreboard players operation actual MotionData %= -10 MotionData
execute if score actual MotionData matches 1.. run scoreboard players operation actual MotionData %= 10 MotionData
execute store result storage motion:data enchant_data.digit int 1 run scoreboard players add actual MotionData 10
function motion:apply/add_enchantment with storage motion:data enchant_data
