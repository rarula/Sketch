#> sketch:core/emitter/check_item_drop/_
#
# アイテムドロップをイベントとして発火する
#
# @within function sketch:core/tick

#>
# @within function sketch:core/emitter/check_item_drop/**
    #declare tag Sketch.checkItemDrop.this

# ドロップされたアイテムを探索する
    tag @s add Sketch.checkItemDrop.this
    execute as @e[type=minecraft:item, distance=..5.0] run function sketch:core/emitter/check_item_drop/find_dropped_item/_
    tag @s remove Sketch.checkItemDrop.this
