#> sketch:core/handler/on_container_open/chest_minecart/filter/find
# @within function sketch:core/handler/on_container_open/chest_minecart/_

#>
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/**
    #declare tag Sketch.this

# 開いたチェスト付きトロッコを探索
    tag @s add Sketch.this
    execute as @e[type=minecraft:chest_minecart, tag=Sketch.Entity, distance=..9.0] run function sketch:core/handler/on_container_open/chest_minecart/filter/15
    tag @s remove Sketch.this
