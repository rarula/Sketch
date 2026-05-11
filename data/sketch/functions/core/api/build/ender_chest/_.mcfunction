#> sketch:core/api/build/ender_chest/_
#
# @input
#   storage sketch:data in
#       id: any
#       contents: (string[] @ 9)[] @ 3
#
# @within function sketch:api/build/ender_chest

## pre
    function sketch:core/common/api/build/pre


# Create menu
    function sketch:core/common/api/build/create_menu/_


## post
    function sketch:core/common/api/build/post


# Set menu info in OhMyDat
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.MenuId set from storage sketch:data in.id
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.Contents set from block 10000 2 10000 Items

# Set menu
    function sketch:core/api/build/ender_chest/set_menu


# Close session
    function sketch:core/common/api/build/close_session

# Reset
    data remove storage sketch:data in
