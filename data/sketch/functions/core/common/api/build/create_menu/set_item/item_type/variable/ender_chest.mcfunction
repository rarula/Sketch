#> sketch:core/common/api/build/create_menu/set_item/item_type/variable/ender_chest
# @within function sketch:core/common/api/build/create_menu/set_item/item_type/variable/_

# Sketch.Player を設定
    tag @s add Sketch.Player

# コールバック
    execute at @s run function #sketch:set_variable/ender_chest

# リセット
    function sketch:core/common/reset_sketch_player
