#> menu:main/
#
# メニューを作成する
#
# @public

# 灰色のガラス板
    item replace block 10000 0 10000 container.0 with minecraft:gray_stained_glass_pane{display:{Name:'""'}}
    data modify storage sketch: in.key set value "f"
    data modify storage sketch: in.listener set value "Frame"
    function sketch:api/register_item/button

# ドア
    item replace block 10000 0 10000 container.0 with minecraft:oak_door{display:{Name:'"Teleport"'}}
    data modify storage sketch: in.key set value "D"
    data modify storage sketch: in.listener set value "DimensionsMenu"
    function sketch:api/register_item/button


# メニューの内容を設定
    data modify storage sketch: in.contents append value [f, f, f, f, f, f, f, f, f]
    data modify storage sketch: in.contents append value [f, -, -, -, D, -, -, -, f]
    data modify storage sketch: in.contents append value [f, f, f, f, f, f, f, f, f]

# メニューを作成
    data modify storage sketch: in.id set value "main"
    function sketch:api/build/auto
