#> sketch:core/handler/on_select/menu_type/ender_chest/callback
# @within function sketch:core/handler/on_select/menu_type/ender_chest/_

## Set isInCallback
    function sketch:core/common/is_in_callback/set


# Callback
    data modify storage sketch:data callback.id set from storage sketch:temp MenuId
    data modify storage sketch:data callback.listener set from storage sketch:temp Item.tag.Sketch.listener
    data modify storage sketch:data callback.selectedItem set from storage sketch:temp Item
    data modify storage sketch:data callback.selectionType set from storage sketch:temp SelectionType
    data modify storage sketch:data callback.otherItems set from storage sketch:temp CurrentContents
    function #sketch:handler/on_select/ender_chest

# Reset
    data remove storage sketch:data callback


## Remove isInCallback
    function sketch:core/common/is_in_callback/reset


# Build API was not called during callback -> Set current menu
    execute unless data storage sketch:core {CalledBuildApi:true} run function sketch:core/handler/on_select/menu_type/ender_chest/set_current_menu

# Reset
    data remove storage sketch:core CalledBuildApi
