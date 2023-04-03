#> sketch:core/handler/on_select/menu_type/ender_chest/set_current_menu
# @within function sketch:core/handler/on_select/menu_type/ender_chest/callback

# コールバック
    data modify storage sketch: callback.id set from storage sketch:temp MenuId
    function #sketch:set_menu/ender_chest

# リセット
    data remove storage sketch: callback
