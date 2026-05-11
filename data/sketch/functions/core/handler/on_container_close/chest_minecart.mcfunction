#> sketch:core/handler/on_container_close/chest_minecart
#
# Called when a chest minecart is closed
#
# @within function sketch:core/emitter/check_container_close/chest_minecart

## Set isInCallback
    function sketch:core/common/is_in_callback/set

## Set Sketch.Target
    function sketch:core/common/sketch_target/set


# Set callback return value
    data modify storage sketch:temp CurrentContents set from entity @e[type=minecraft:chest_minecart, tag=Sketch.Target, limit=1] Items
    data remove storage sketch:temp CurrentContents[{tag:{Sketch:{isButton:true}}}]

# Callback
    data modify storage sketch:data callback.otherItems set from storage sketch:temp CurrentContents
    function #sketch:handler/on_close/chest_minecart

# Reset
    data remove storage sketch:data callback
    data remove storage sketch:temp CurrentContents


## Remove Sketch.Target
    function sketch:core/common/sketch_target/reset

## Remove isInCallback
    function sketch:core/common/is_in_callback/reset


# Remove menu info from OhMyDat
    function #oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.CurrentMenuType

# Remove Sketch.Id
    scoreboard players reset @s Sketch.Id
