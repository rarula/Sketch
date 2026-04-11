#> sketch:core/common/api/register_item/get_slot_index
#
# アイテムを保存するスロットを取得する
#
# @output
#   storage sketch:temp
#       Slot: byte
#           取得したスロット
#
# @within function sketch:core/api/register_item/*/register_local_item

# アイテムを保存するスロットを取得
    execute store result storage sketch:temp Slot byte 1.0 run scoreboard players get $LocalItemSlotIndex Sketch

# アイテムを保存するスロットを変更
    scoreboard players add $LocalItemSlotIndex Sketch 1
    execute if score $LocalItemSlotIndex Sketch matches 27 run scoreboard players set $LocalItemSlotIndex Sketch 0
