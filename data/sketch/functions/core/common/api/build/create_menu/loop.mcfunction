#> sketch:core/common/api/build/create_menu/loop
# @within function
#   sketch:core/common/api/build/create_menu/_
#   sketch:core/common/api/build/create_menu/loop

# Set slot of item to place
    execute store result storage sketch:temp Slot byte 1.0 run scoreboard players get $Slot Sketch

# Set key of item to place
    data modify storage sketch:temp Content set from storage sketch:temp Contents[-1]
    data remove storage sketch:temp Contents[-1]

# Place item
    function sketch:core/common/api/build/create_menu/set_item/_


# Change slot of item to place
    scoreboard players remove $Slot Sketch 1

# Recurse until all items are placed
    execute if score $Slot Sketch matches 0.. run function sketch:core/common/api/build/create_menu/loop
