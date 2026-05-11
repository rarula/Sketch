#> sketch:core/common/api/register_item/get_slot_index
#
# Get slot to save item
#
# @output
#   storage sketch:temp
#       Slot: byte
#           Retrieved slot
#
# @within function sketch:core/api/register_item/*/register_local_item

# Get slot to save item
    execute store result storage sketch:temp Slot byte 1.0 run scoreboard players get $LocalItemSlotIndex Sketch

# Change slot to save item
    scoreboard players add $LocalItemSlotIndex Sketch 1
    execute if score $LocalItemSlotIndex Sketch matches 27 run scoreboard players set $LocalItemSlotIndex Sketch 0
