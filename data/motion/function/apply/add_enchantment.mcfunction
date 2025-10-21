$item modify entity @s saddle {\
  function: "minecraft:set_enchantments",\
  enchantments: {\
    "motion:apply_motion_$(axis)_$(exponent)": $(digit)\
  },\
  add: true\
}
