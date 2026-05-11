#> sketch:core/api/register_chest_minecart/_
# @within function sketch:api/register_chest_minecart

# Executor is not registered -> Register executor
    execute if entity @s[type=minecraft:chest_minecart, tag=!Sketch.Entity] run function sketch:core/api/register_chest_minecart/register
