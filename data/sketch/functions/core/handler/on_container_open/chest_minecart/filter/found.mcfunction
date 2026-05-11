#> sketch:core/handler/on_container_open/chest_minecart/filter/found
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/0

## Set Sketch.Target
    tag @s add Sketch.Target


# Copy own Sketch.Id to the player who opened
    scoreboard players operation @a[tag=Sketch.this] Sketch.Id = @s Sketch.Id
