#> sketch:core/handler/on_select/menu_type/chest_minecart/set_current_menu
# @within function sketch:core/handler/on_select/menu_type/chest_minecart/callback

## Set isInCallback
    function sketch:core/common/is_in_callback/set


# Callback
    data modify storage sketch:data callback.id set from storage sketch:temp MenuId
    function #sketch:set_menu/chest_minecart

# Reset
    data remove storage sketch:data callback


## Remove isInCallback
    function sketch:core/common/is_in_callback/reset
