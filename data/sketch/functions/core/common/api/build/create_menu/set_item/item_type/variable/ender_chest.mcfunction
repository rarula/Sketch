#> sketch:core/common/api/build/create_menu/set_item/item_type/variable/ender_chest
# @within function sketch:core/common/api/build/create_menu/set_item/item_type/variable/_

## Sketch.Player を設定
    tag @s add Sketch.Player


# コールバック
    execute at @s run function #sketch:set_variable/ender_chest


## Sketch.Player を削除
    function sketch:core/common/sketch_player/reset
