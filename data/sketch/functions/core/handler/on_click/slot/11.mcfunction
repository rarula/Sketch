#> sketch:core/handler/on_click/slot/11
# @within function sketch:core/handler/on_click/_

# クリックされたアイテムのidを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:11b}].tag.Sketch.id

# 別のアイテムが入っていればデータを設定
    execute if data storage sketch:temp CurrentInventory[{Slot:11b}] run data modify storage sketch: out.item set from storage sketch:temp CurrentInventory[{Slot:11b}]