#> inventorygui:core/action/drop/search/player/_
# @within function inventorygui:core/action/drop/search/player/check

# ドロップアイテムのデータを取得
    data modify storage inventorygui:core/action/drop _.VerifyUUID set from storage inventorygui:core/action/drop _.DroppedItemData.Thrower

# 実行者のUUIDと一致するか確認
    execute store result storage inventorygui:core/action/drop _.Success byte 1.0 run data modify storage inventorygui:core/action/drop _.VerifyUUID set from entity @s UUID
    execute if data storage inventorygui:core/action/drop _{Success:false} run function inventorygui:core/action/drop/search/player/found
