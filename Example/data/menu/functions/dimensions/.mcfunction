#> menu:dimensions/
#
# メニューを作成する
#
# @public

# 灰色のガラス板
    item replace block 10000 0 10000 container.0 with minecraft:gray_stained_glass_pane{display:{Name:'""'}}
    data modify storage sketch: in.key set value "f"
    data modify storage sketch: in.listener set value "Frame"
    function sketch:api/register_item/button

# バリアブロック
    item replace block 10000 0 10000 container.0 with minecraft:barrier{display:{Name:'""'}}
    data modify storage sketch: in.key set value "B"
    data modify storage sketch: in.listener set value "Back"
    function sketch:api/register_item/button

# 仮のアイテム
    data modify storage sketch: in.key set value "D"
    function sketch:api/register_item/variable


# メニューの内容を設定
    data modify storage sketch: in.contents append value [f, f, f, f, f, f, f, f, f]
    data modify storage sketch: in.contents append value [f, D, D, D, -, -, -, -, f]
    data modify storage sketch: in.contents append value [f, f, f, f, f, f, f, f, B]

# メニューを作成
    data modify storage sketch: in.id set value "dimensions"
    function sketch:api/build/auto
