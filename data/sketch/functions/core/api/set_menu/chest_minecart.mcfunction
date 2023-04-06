#> sketch:core/api/set_menu/chest_minecart
# @within function sketch:core/api/set_menu/_

# Sketch.Target を設定
    function sketch:core/common/sketch_target/set

# コールバック
    data modify storage sketch: callback.id set from storage sketch: in.id
    data remove storage sketch: in
    execute at @s run function #sketch:set_menu/chest_minecart

# リセット
    function sketch:core/common/sketch_target/reset
