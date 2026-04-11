#> sketch:util/map/core/set/update_map/update
# @within function sketch:util/map/core/set/update_map/_

# 指定されたキーに対する値を更新
    data modify storage sketch:util/temp TargetElements[-1].value set from storage sketch:util in.value

# 削除した要素を戻す
    function sketch:util/map/core/set/update_map/element/revert

# 更新した要素を含むMapを返す
    data modify storage sketch:util out.map set from storage sketch:util/temp TargetElements
