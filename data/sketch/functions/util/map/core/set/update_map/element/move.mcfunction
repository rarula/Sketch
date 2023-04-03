#> sketch:util/map/core/set/update_map/element/move
# @within function
#   sketch:util/map/core/set/update_map/_
#   sketch:util/map/core/set/update_map/element/move

# 配列末尾に含まれるキーが一致するかテスト
    data modify storage sketch:util/temp Key set from storage sketch:util/temp TargetElements[-1].key
    execute store success storage sketch:util/temp Result byte 1.0 run data modify storage sketch:util/temp Key set from storage sketch:util in.key

# キーが不一致 -> 配列末尾の要素を別のデータに移動
    execute if data storage sketch:util/temp {Result:true} run data modify storage sketch:util/temp DeletedElements append from storage sketch:util/temp TargetElements[-1]
    execute if data storage sketch:util/temp {Result:true} run data remove storage sketch:util/temp TargetElements[-1]

# キーが一致するか、すべての要素を探索するまで再帰
    execute if data storage sketch:util/temp {Result:true} if data storage sketch:util/temp TargetElements[-1] run function sketch:util/map/core/set/update_map/element/move
