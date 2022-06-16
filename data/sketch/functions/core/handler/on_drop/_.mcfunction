#> sketch:core/handler/on_drop/_
#
# アイテムがドロップされたときに呼び出される
#
# @within function sketch:core/handler/on_drop/check_dropped_item

#>
# @private
#declare tag Sketch.onDrop.this

# ドロップしたプレイヤーを探索
    tag @s add Sketch.onDrop.this
    execute at @s as @a[scores={SketchDrop=1..}, sort=nearest] at @s anchored eyes if entity @e[type=minecraft:item, tag=Sketch.onDrop.this, distance=..1.5] run function sketch:core/handler/on_drop/player/check_condition

# リセット
    kill @s
    data remove storage sketch:temp Result
    data remove storage sketch:temp CompareUUID
