#> sketch:core/handler/on_click/check_clicked_item
#
# クリック可能なプレイヤーに対する処理
#
# @within function sketch:core/tick

# Sketchのアイテムをクリックしているか確認
    execute store success storage sketch:temp isSelected byte 1.0 run clear @s #sketch:all{Sketch:{Button:true}}
    execute if data storage sketch:temp {isSelected:true} run function sketch:core/handler/on_click/_

# リセット
    data remove storage sketch:temp isSelected
