execute if predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    type_specific: {\
      type: "minecraft:player",\
      gamemode: ["spectator"]\
    }\
  }\
} run return fail

function motion:game_mode/get
$rotate @s $(rotation)
gamemode spectator
item replace entity f9ebb8e2-9780-41ec-93aa-90ca4cb56a92 contents from entity @s saddle
item replace entity @s saddle with minecraft:stick[\
  minecraft:equippable={\
    slot: "saddle",\
    equip_sound: "minecraft:intentionally_empty",\
    allowed_entities: "minecraft:player"\
  }\
]

$function motion:apply/for_axis {axis: 'x', amount: $(x)}
$function motion:apply/for_axis {axis: 'y', amount: $(y)}
$function motion:apply/for_axis {axis: 'z', amount: $(z)}

function motion:game_mode/set with storage motion:data
rotate @s ~ ~
item replace entity @s saddle from entity f9ebb8e2-9780-41ec-93aa-90ca4cb56a92 contents
