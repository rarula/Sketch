#> sketch:core/handler/on_select/menu_type/ender_chest/set_current_menu
# @within function sketch:core/handler/on_select/menu_type/ender_chest/callback

## Set isInCallback
    function sketch:core/common/is_in_callback/set


# Callback
    data modify storage sketch:data callback.id set from storage sketch:temp MenuId
    function #sketch:set_menu/ender_chest

# Reset
    data remove storage sketch:data callback


## Remove isInCallback
    function sketch:core/common/is_in_callback/reset
