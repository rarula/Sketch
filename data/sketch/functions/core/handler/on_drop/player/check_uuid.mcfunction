#> sketch:core/handler/on_drop/player/check_uuid
# @within function sketch:core/handler/on_drop/player/check_condition

# 実行者のUUIDを取得
    data modify storage sketch:temp CompareUUID set from entity @s UUID

# ドロップしたプレイヤーのUUIDと一致するか確認
    execute store success storage sketch:temp Result byte 1.0 run data modify storage sketch:temp CompareUUID set from storage sketch:temp ItemData.Thrower
    execute if data storage sketch:temp {Result:false} run function sketch:core/handler/on_drop/player/found
