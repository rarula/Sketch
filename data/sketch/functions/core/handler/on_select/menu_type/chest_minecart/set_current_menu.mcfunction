#> sketch:core/handler/on_select/menu_type/chest_minecart/set_current_menu
# @within function sketch:core/handler/on_select/menu_type/chest_minecart/callback

# コールバック
    data modify storage sketch: callback.id set from storage sketch:temp MenuId
    function #sketch:set_menu/chest_minecart

# リセット
    data remove storage sketch: callback
