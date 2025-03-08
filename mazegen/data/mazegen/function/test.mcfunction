# Looks like saving and loading from structure blocks is instant, it just *appears* the next tick.
# So, saving and loading multiple things to the same file in one tick *should* work...

# clone 1
clone -418 80 -113 -419 81 -112 -419 80 -116

# save 1
setblock -419 79 -116 minecraft:redstone_block
setblock -419 79 -116 minecraft:air

# load 1
setblock -421 78 -113 minecraft:redstone_block
setblock -421 78 -113 minecraft:air

# clone 2
clone -418 81 -108 -419 80 -109 -419 80 -116

# save 2
setblock -419 79 -116 minecraft:redstone_block
setblock -419 79 -116 minecraft:air

# load 2
setblock -421 78 -109 minecraft:redstone_block
setblock -421 78 -109 minecraft:air

tick rate 10