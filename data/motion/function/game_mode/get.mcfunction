execute if predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    type_specific: {\
      type: "minecraft:player",\
      gamemode: ["adventure"]\
    }\
  }\
} run return run data modify storage motion:data game_mode set value "adventure"

execute if predicate {\
  condition: "minecraft:entity_properties",\
  entity: "this",\
  predicate: {\
    type_specific: {\
      type: "minecraft:player",\
      gamemode: ["survival"]\
    }\
  }\
} run return run data modify storage motion:data game_mode set value "survival"

data modify storage motion:data game_mode set value "creative"
