#> inventory_gui:core/action/interact/_
#
# インタラクト時に呼び出される
#
# @within advancement inventory_gui:interact

## 前処理
# インタラクト先のエンティティを探索
    function inventory_gui:core/action/interact/filter/search

# リセット
    advancement revoke @s only inventory_gui:interact


## メイン処理
# コールバック
    function #inventory_gui:interact

# idを設定
    data modify storage inventory_gui: id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.id

# コールバック
    function #inventory_gui:callback


## 後処理
# リセット
    data remove storage inventory_gui: id
