#> sketch:core/handler/on_interact/filter/13
# @within function sketch:core/handler/on_interact/filter/14

execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={13-0=true}}] if entity @s[tag=Sketch.Filter.13-0] run function sketch:core/handler/on_interact/filter/12
execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={13-1=true}}] if entity @s[tag=Sketch.Filter.13-1] run function sketch:core/handler/on_interact/filter/12
