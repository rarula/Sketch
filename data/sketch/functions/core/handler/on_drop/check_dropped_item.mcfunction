#> sketch:core/handler/on_drop/check_dropped_item
#
# ドロップされたアイテムに対する処理
#
# @within function sketch:core/tick

# Sketchのアイテムであればドロップ処理
    data modify storage sketch:temp ItemData set from entity @s
    execute if data storage sketch:temp ItemData.Item.tag.Sketch{AnyButton:true} run function sketch:core/handler/on_drop/_

# リセット
    data remove storage sketch:temp ItemData
