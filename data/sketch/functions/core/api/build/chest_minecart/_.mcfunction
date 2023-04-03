#> sketch:core/api/build/chest_minecart/_
#
# @input
#   storage sketch: in
#       id: any
#       contents: (string[] @ 9)[] @ 3
#
# @within function sketch:api/build/chest_minecart

## 実行者を登録
    function sketch:api/register_chest_minecart

## pre
    function sketch:core/common/api/build/pre


# メニューを作成
    function sketch:core/common/api/build/create_menu/_

# OhMyDatにメニューの情報を設定
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.MenuId set from storage sketch: in.id
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.Contents set from block 10000 2 10000 Items

# メニューを設定
    function sketch:core/api/build/chest_minecart/set_menu


# セッションを閉じる
    function sketch:core/common/api/build/close_session

# リセット
    data remove storage sketch: in


## post
    function sketch:core/common/api/build/post
