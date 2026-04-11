#> sketch:core/common/api/build/create_menu/set_item/item_type/variable/chest_minecart
# @within function sketch:core/common/api/build/create_menu/set_item/item_type/variable/_

## Sketch.Player を設定
    function sketch:core/common/sketch_player/set


# コールバック
    execute at @s run function #sketch:set_variable/chest_minecart


## Sketch.Player を削除
    function sketch:core/common/sketch_player/reset
