#> sketch:core/common/api/build/create_menu/_
#
# Create menu
#
# @input
#   storage sketch:data in
#       id: any
#           Identifier of the menu to create
#       contents: (string[] @ 9)[] @ 3
#           Contents of the menu to create
#
# @output
#   vector 10000 2 10000
#       container.0~26
#           Created menu
#
# @within function sketch:core/api/build/**

#>
# @within function
#   sketch:core/common/api/build/**
    #declare score_holder $Slot


# Flatten contents
    data modify storage sketch:util in.array set from storage sketch:data in.contents
    function sketch:util/array/flat

# Assign contents
    data modify storage sketch:temp Contents set from storage sketch:util out.array
    function sketch:util/cleanup


# Set the slot where item placement starts
    execute store result score $Slot Sketch if data storage sketch:temp Contents[]
    scoreboard players remove $Slot Sketch 1

# Place item
    function sketch:core/common/api/build/create_menu/loop


# Reset
    scoreboard players reset $Slot Sketch
    data remove storage sketch:temp Contents
    data remove storage sketch:temp Content
    data remove storage sketch:temp Slot
    data remove storage sketch:temp ItemInfo
    data remove storage sketch:temp isGlobalItemInfo
