# Motionomicon
This is a data pack that allows you to apply motion to a Player.
The name is a combination of the words *motion* and *Necronomicon* as it uses enchantments to apply motion.


## How to Use
There are two types of functions: one that allows you to set the motion with the specified value and one that allows you to add motion on top of the existing motion.
Any of the numbers specified can range from -9.9999 to 9.9999.
Digits outside of that range won't be considered, meaning that 14.5 is the same as 4.5 and -23.8 is the same as -3.8.
These functions fail when the Player is in Spectator mode as motion cannot be applied when they are in said game mode.
The effects stack, which means you can call the functions multiple times and it will act appropriately.
For example, the following two calls result in a total motion of `[1, 1, 0]`:
```mcfunction
function motion:set {x: 1, y: 0, z: 0}
function motion:add {x: 0, y: 1, z: 0}
```
This also means that the effects are applied immediately.
Note that due to floating-point precision errors there might an ever so slight error with the actual motion, though this tends to be negligible.
Additionally, the screen might flicker sometimes due to the `rotate` command having already rotated the Player.
Please be wary of this.

### `motion:set` and `motion:add`
Both of these functions take the parameters `x`, `y`, and `z`, which are all numbers.
`motion:set` overwrites the current motion entirely.
`motion:add` adds the motion on top of the current motion.

#### Examples
Jump a single block upwards.
```mcfunction
function motion:set {x: 0, y: 0.42, z: 0}
```

Dash in the negative z direction.
```mcfunction
function motion:set {x: 0, y: 0, z: -2}
```

### `motion:set_rotated` and `motion:add_rotated`
Both of these functions take the parameters `left`, `up`, and `forwards`, which are all numbers.
These functions use the Player's rotation as their axes instead of using the cardinal directions.
`motion:set_forwards` overwrites the current motion entirely.
`motion:add_forwards` adds the motion on top of the current motion.

#### Examples
Strafe left roughly 10 blocks.
```mcfunction
function motion:set_rotated {left: 0.91, up: 0, forwards: 0}
```

Jump and move forwards one block.
```mcfunction
function motion:set_rotated {left: 0, up: 0.42, forwards: 0.27}
```
