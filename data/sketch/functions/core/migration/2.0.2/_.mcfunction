#> sketch:core/migration/2.0.2/_
# @within function sketch:core/load

# バージョン設定
    data modify storage sketch: Version set value "2.0.2"

# sketch:util/map/delete の引数が消去されない問題を修正 (#8)
    data remove storage sketch:util in
