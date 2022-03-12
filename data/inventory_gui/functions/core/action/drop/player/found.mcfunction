#> inventory_gui:core/action/drop/player/found
# @within function inventory_gui:core/action/drop/player/check_uuid

## 前処理
# 紐付け
    function inventory_gui:api/link

# idを取得 (OhMyDat)
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt, limit=1] run function #oh_my_dat:please

# 紐付けを解除
    function inventory_gui:api/unlink


## メイン処理
# idを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.id set from storage inventory_gui:temp ItemData.Item.tag.InventoryGui.id
    data modify storage inventory_gui: out.id set from storage inventory_gui:temp ItemData.Item.tag.InventoryGui.id

# コールバック
    function #inventory_gui:callback


## 後処理
# リセット
    data remove storage inventory_gui: out

# ドロップした回数を減らす
    scoreboard players remove @s InventoryGuiDrop 1
