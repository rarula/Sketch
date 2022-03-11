#> inventory_gui:core/action/drop/player/check_uuid
# @within function inventory_gui:core/action/drop/player/check_condition

# 実行者のUUIDを取得
    data modify storage inventory_gui:temp CompareUUID set from entity @s UUID

# ドロップしたプレイヤーのUUIDと一致するか確認
    execute store success storage inventory_gui:temp Result byte 1.0 run data modify storage inventory_gui:temp CompareUUID set from storage inventory_gui:temp ItemData.Thrower
    execute if data storage inventory_gui:temp {Result:false} run function inventory_gui:core/action/drop/player/found
