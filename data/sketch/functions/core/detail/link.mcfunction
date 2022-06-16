#> sketch:core/detail/link
# @within function sketch:api/link

#>
# @private
#declare tag Sketch.Link.this

# エンティティと紐付け
    tag @s add Sketch.Link.this
    execute as @e[type=minecraft:chest_minecart, tag=Sketch.RegisteredEntity] if score @s SketchId = @a[tag=Sketch.Link.this, limit=1] SketchId run tag @s add Sketch.LinkingEntity
    tag @s remove Sketch.Link.this
