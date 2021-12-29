#> inventorygui:core/action/interact/_
#
# インタラクト時に呼び出される
#
# @within advancement inventorygui:interact

# インタラクト先のエンティティ探索
    function inventorygui:core/action/interact/search/_

# リセット
    advancement revoke @s only inventorygui:interact

# idを設定
    function #inventorygui:interacted
    data modify storage inventorygui: id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.id

# コールバック
    function #inventorygui:callback
