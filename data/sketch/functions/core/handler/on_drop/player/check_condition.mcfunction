#> sketch:core/handler/on_drop/player/check_condition
# @within function sketch:core/handler/on_drop/_

# 未発見であれば実行
    execute unless data storage sketch:temp {Result:false} run function sketch:core/handler/on_drop/player/check_uuid
