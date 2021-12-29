#> inventorygui:register
#
# InventoryGui に登録します
# 実行者はチェスト付きトロッコである必要があります
#
# @api

# 登録
    execute if entity @s[type=minecraft:chest_minecart, tag=!InvGui.RegisteredEntity] run function inventorygui:core/register
