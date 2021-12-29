#> inventorygui:disconnect
#
# インタラクト先のエンティティに設定されたタグを削除します
#
# @api

# タグを削除
    tag @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt] remove InvGui.ConnectingAt
