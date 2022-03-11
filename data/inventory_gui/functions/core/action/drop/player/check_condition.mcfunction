#> inventory_gui:core/action/drop/player/check_condition
# @within function inventory_gui:core/action/drop/_

# 未発見であれば実行
    execute unless data storage inventory_gui:temp {Result:false} run function inventory_gui:core/action/drop/player/check_uuid
