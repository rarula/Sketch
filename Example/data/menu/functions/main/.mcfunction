#> menu:main/
#
# Create a menu
#
# @public

# button (gray_stained_glass_pane)
    item replace block 10000 0 10000 container.0 with minecraft:gray_stained_glass_pane{display:{Name:'""'}}
    data modify storage sketch: in.key set value "f"
    data modify storage sketch: in.listener set value "Frame"
    function sketch:api/register_item/button

# button (oak_door)
    item replace block 10000 0 10000 container.0 with minecraft:oak_door{display:{Name:'"Teleport"'}}
    data modify storage sketch: in.key set value "D"
    data modify storage sketch: in.listener set value "DimensionsMenu"
    function sketch:api/register_item/button


# Set menu contents
    data modify storage sketch: in.contents append value [f, f, f, f, f, f, f, f, f]
    data modify storage sketch: in.contents append value [f, -, -, -, D, -, -, -, f]
    data modify storage sketch: in.contents append value [f, f, f, f, f, f, f, f, f]

# Create a menu
    data modify storage sketch: in.id set value "main"
    function sketch:api/build/auto
