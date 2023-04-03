#> sketch:util/map/core/set/update_map/_
# @within function sketch:util/map/core/set/_

# 対象のMapをコピー
    data modify storage sketch:util/temp TargetElements set from storage sketch:util in.map

# 指定されたキーを持つ要素をTargetElements[-1]に移動
    function sketch:util/map/core/set/update_map/element/move


# 指定したキーが発見された -> Mapを更新
    execute if data storage sketch:util/temp {Result:false} run function sketch:util/map/core/set/update_map/update

# 指定したキーが発見されなかった -> Mapに要素を追加
    execute if data storage sketch:util/temp {Result:true} run function sketch:util/map/core/set/update_map/add


# リセット
    data remove storage sketch:util/temp TargetElements
    data remove storage sketch:util/temp DeletedElements
    data remove storage sketch:util/temp Key
    data remove storage sketch:util/temp Result
