#> sketch:core/api/register_item/button/_
#
# @input
#   vector 10000 0 10000
#       container.0
#   storage sketch: in
#       key: string
#       listener?: any
#       isGlobal?: boolean
#
# @within function sketch:api/register_item/button

# デフォルト引数を設定
    execute unless data storage sketch: in.isGlobal run data modify storage sketch: in.isGlobal set value false


# アイテムの種類を設定
    data modify storage sketch:temp ItemType set value "Button"
    item modify block 10000 0 10000 container.0 sketch:register_item/button
    item modify block 10000 0 10000 container.0 sketch:set_listener

# それぞれのMapに追加
    execute if data storage sketch: in{isGlobal:0b} run function sketch:core/api/register_item/button/register_local_item
    execute if data storage sketch: in{isGlobal:1b} run function sketch:core/api/register_item/button/register_global_item


# リセット
    item replace block 10000 0 10000 container.0 with minecraft:air
    data remove storage sketch:temp ItemType
    data remove storage sketch: in
