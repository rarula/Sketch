#> sketch:core/handler/on_container_close/ender_chest
#
# Called when an ender chest is closed
#
# @within function sketch:core/emitter/check_container_close/ender_chest

## Set isInCallback
    function sketch:core/common/is_in_callback/set


# Set callback return value
    data modify storage sketch:temp CurrentContents set from entity @s EnderItems
    data remove storage sketch:temp CurrentContents[{tag:{Sketch:{isButton:true}}}]

# Callback
    data modify storage sketch:data callback.otherItems set from storage sketch:temp CurrentContents
    function #sketch:handler/on_close/ender_chest

# Reset
    data remove storage sketch:data callback
    data remove storage sketch:temp CurrentContents


## Remove isInCallback
    function sketch:core/common/is_in_callback/reset


# Remove menu info from OhMyDat
    function #oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.MenuId
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.Contents
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.CurrentMenuType
