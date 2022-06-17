#> sketch:core/tick
#
# tick時に呼び出される
#
# @within tag/function minecraft:tick

# ドロップされたアイテムに対する処理
    execute if entity @e[type=minecraft:chest_minecart, tag=SketchEntity, limit=1] if entity @a[scores={SketchDrop=1..}, limit=1] at @a[scores={SketchDrop=1..}] anchored eyes if entity @e[type=minecraft:item, distance=..1.5, limit=1] as @e[type=minecraft:item, distance=..1.5, sort=nearest] run function sketch:core/handler/on_drop/check_dropped_item

# クリック可能なプレイヤーに対する処理
    execute if entity @e[type=minecraft:chest_minecart, tag=SketchEntity, limit=1] as @a at @s if entity @e[type=minecraft:chest_minecart, tag=SketchEntity, distance=..9.0, limit=1] run function sketch:core/handler/on_click/check_clicked_item

# リセット
    scoreboard players reset @a[scores={SketchDrop=-2147483648..2147483647}] SketchDrop
