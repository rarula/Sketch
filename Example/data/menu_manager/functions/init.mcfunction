#> menu_manager:init
# @within tag/function minecraft:load

# セットアップ
    execute in minecraft:overworld run function sketch:api/setup
    execute in minecraft:the_nether run function sketch:api/setup
    execute in minecraft:the_end run function sketch:api/setup

# アイテムを登録
    item replace block 10000 0 10000 container.0 with minecraft:air
    data modify storage sketch: in.key set value "-"
    data modify storage sketch: in.isGlobal set value true
    function sketch:api/register_item/normal
