#> sketch:core/tick
#
# tick時に実行される
#
# @within tag/function minecraft:tick

# アイテムクリックを確認
    execute as @a run function sketch:core/emitter/check_item_click/_

# アイテムドロップを確認
    execute if entity @a[scores={Sketch.Drop=1..}, limit=1] as @a[scores={Sketch.Drop=1..}] at @s if entity @e[type=minecraft:item, distance=..5.0, limit=1] run function sketch:core/emitter/check_item_drop/_

# リセット
    scoreboard players reset @a[scores={Sketch.Drop=-2147483648..2147483647}] Sketch.Drop
