#> sketch:core/handler/on_select/get_changed_slot
#
# Get item in changed slot (macro loop, early exit)
#
# @output
#   storage sketch:temp
#       Item: Item
#           Item in the changed slot
#
# @within function sketch:core/handler/on_select/menu_type/*/_

# Loop through slots 0..26 to find the changed button
    scoreboard players set $_gcs Sketch 0
    function sketch:core/handler/on_select/get_changed_slot/loop
    scoreboard players reset $_gcs Sketch
