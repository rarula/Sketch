#> sketch:core/api/register_item/variable/_
#
# @input
#   storage sketch: in
#       key: string
#       isGlobal?: boolean
#
# @within function sketch:api/register_item/variable

# デフォルト引数を指定
    execute unless data storage sketch: in.isGlobal run data modify storage sketch: in.isGlobal set value false


# アイテムの種類を設定
    data modify storage sketch:temp ItemType set value "Variable"

# それぞれのMapに追加
    execute if data storage sketch: in{isGlobal:0b} run function sketch:core/api/register_item/variable/register_local_item
    execute if data storage sketch: in{isGlobal:1b} run function sketch:core/api/register_item/variable/register_global_item


# リセット
    data remove storage sketch:temp ItemType
    data remove storage sketch: in
