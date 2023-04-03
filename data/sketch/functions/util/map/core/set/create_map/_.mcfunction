#> sketch:util/map/core/set/create_map/_
# @within function sketch:util/map/core/set/_

# キーと値の要素を作成
    data modify storage sketch:util/temp Element.key set from storage sketch:util in.key
    data modify storage sketch:util/temp Element.value set from storage sketch:util in.value

# 作成した要素を含むMapを返す
    data modify storage sketch:util out.map append from storage sketch:util/temp Element

# リセット
    data remove storage sketch:util/temp Element
