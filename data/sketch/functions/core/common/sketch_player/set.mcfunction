#> sketch:core/common/sketch_player/set
#
# Set Sketch.Player tag on the player who opened the executor's chest minecart
#
# @within function sketch:core/**

#>
# @private
    #declare tag Sketch.this

# Identify the opened chest minecart
    tag @s add Sketch.this
    execute as @a if score @s Sketch.Id = @e[type=minecraft:chest_minecart, tag=Sketch.this, limit=1] Sketch.Id run tag @s add Sketch.Player
    tag @s remove Sketch.this
