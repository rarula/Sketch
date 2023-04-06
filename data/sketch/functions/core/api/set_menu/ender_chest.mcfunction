#> sketch:core/api/set_menu/ender_chest
# @within function sketch:core/api/set_menu/_

## isInCallback を設定
    function sketch:core/common/is_in_callback/set


# コールバック
    data modify storage sketch: callback.id set from storage sketch: in.id
    data remove storage sketch: in
    execute at @s run function #sketch:set_menu/ender_chest


## isInCallback を削除
    function sketch:core/common/is_in_callback/reset
