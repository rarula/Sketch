#> sketch:core/handler/on_select/menu_type/chest_minecart/_
# @within function sketch:core/handler/on_select/_

## Set Sketch.Target
    function sketch:core/common/sketch_target/set


# Get menu info
    execute as @e[type=minecraft:chest_minecart, tag=Sketch.Target] run function #oh_my_dat:please
    data modify storage sketch:temp MenuId set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.MenuId
    data modify storage sketch:temp Contents set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.Contents
    data modify storage sketch:temp CurrentContents set from entity @e[type=minecraft:chest_minecart, tag=Sketch.Target, limit=1] Items

# Get item in changed slot
    function sketch:core/handler/on_select/get_changed_slot

# Get normal item
    data remove storage sketch:temp CurrentContents[{tag:{Sketch:{isButton:true}}}]

# Callback
    function sketch:core/handler/on_select/menu_type/chest_minecart/callback

# Reset
    data remove storage sketch:temp MenuId
    data remove storage sketch:temp Contents
    data remove storage sketch:temp CurrentContents
    data remove storage sketch:temp Item


## Remove Sketch.Target
    function sketch:core/common/sketch_target/reset
