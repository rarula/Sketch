#> sketch:core/common/sketch_target/set
#
# Set Sketch.Target tag on the chest minecart opened by the executor's player
#
# @within function sketch:core/**

#>
# @private
    #declare tag Sketch.this

# Identify the opened chest minecart
    tag @s add Sketch.this
    execute as @e[type=minecraft:chest_minecart, tag=Sketch.Entity] if score @s Sketch.Id = @a[tag=Sketch.this, limit=1] Sketch.Id run tag @s add Sketch.Target
    tag @s remove Sketch.this
