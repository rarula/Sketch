#> sketch:core/handler/on_select/get_changed_slot/loop
# @within function sketch:core/handler/on_select/get_changed_slot
# @within function sketch:core/handler/on_select/get_changed_slot/loop

# Write current slot number to storage (for macro)
    execute store result storage sketch:temp _gcs_slot int 1 run scoreboard players get $_gcs Sketch

# Check slot (macro)
    function sketch:core/handler/on_select/get_changed_slot/check with storage sketch:temp
    data remove storage sketch:temp _gcs_slot

# Item not found & slots remaining -> Move to next slot
    scoreboard players add $_gcs Sketch 1
    execute unless data storage sketch:temp Item if score $_gcs Sketch matches 0..26 run function sketch:core/handler/on_select/get_changed_slot/loop
