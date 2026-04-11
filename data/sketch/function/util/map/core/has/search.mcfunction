#> sketch:util/map/core/has/search
# @within function
#   sketch:util/map/core/has/_
#   sketch:util/map/core/has/search

# 配列末尾に含まれるキーが一致するかテスト
    data modify storage sketch:util/temp Key set from storage sketch:util in.map[-1].key
    execute store success storage sketch:util/temp Result byte 1.0 run data modify storage sketch:util/temp Key set from storage sketch:util in.key

# キーが一致 -> trueを返す
    execute if data storage sketch:util/temp {Result:false} run data modify storage sketch:util out.contains set value true

# キーが不一致 -> 配列末尾の要素を削除
    execute if data storage sketch:util/temp {Result:true} run data remove storage sketch:util in.map[-1]

# キーが一致するか、すべての要素を探索するまで再帰
    execute if data storage sketch:util/temp {Result:true} if data storage sketch:util in.map[-1] run function sketch:util/map/core/has/search
