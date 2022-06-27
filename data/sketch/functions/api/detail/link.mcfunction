#> sketch:api/detail/link
# @within function sketch:api/link

#>
# @private
#declare tag Sketch.Link.this

tag @s add Sketch.Link.this
execute as @e[type=minecraft:chest_minecart, tag=SketchEntity] if score @s SketchId = @a[tag=Sketch.Link.this, limit=1] SketchId run tag @s add SketchTarget
tag @s remove Sketch.Link.this
