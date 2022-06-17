#> sketch:core/handler/on_click/slot/21
# @within function sketch:core/handler/on_click/_

# クリックされたアイテムのidを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:21b}].tag.Sketch.id

# 別のアイテムが入っていればデータを設定
    execute if data storage sketch:temp NowInventory[{Slot:21b}] run data modify storage sketch: out.item set from storage sketch:temp NowInventory[{Slot:21b}]
