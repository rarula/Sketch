#> sketch:core/handler/on_select/menu_type/chest_minecart/set_current_menu
# @within function sketch:core/handler/on_select/menu_type/chest_minecart/callback

## isInCallback を設定
    function sketch:core/common/is_in_callback/set


# コールバック
    data modify storage sketch: callback.id set from storage sketch:temp MenuId
    function #sketch:set_menu/chest_minecart

# リセット
    data remove storage sketch: callback


## isInCallback を削除
    function sketch:core/common/is_in_callback/reset
