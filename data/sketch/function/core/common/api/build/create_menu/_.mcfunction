#> sketch:core/common/api/build/create_menu/_
#
# メニューを作成する
#
# @input
#   storage sketch: in
#       id: any
#           作成するメニューの識別子
#       contents: (string[] @ 9)[] @ 3
#           作成するメニューの内容
#
# @output
#   vector 10000 2 10000
#       container.0~26
#           作成されたメニュー
#
# @within function sketch:core/api/build/**

#>
# @within function
#   sketch:core/common/api/build/**
    #declare score_holder $Slot


# contentsを平坦化
    data modify storage sketch:util in.array set from storage sketch: in.contents
    function sketch:util/array/flat

# contentsを代入
    data modify storage sketch:temp Contents set from storage sketch:util out.array
    function sketch:util/cleanup


# アイテムの配置を開始するスロットを設定
    execute store result score $Slot Sketch if data storage sketch:temp Contents[]
    scoreboard players remove $Slot Sketch 1

# アイテムを配置
    function sketch:core/common/api/build/create_menu/loop


# リセット
    scoreboard players reset $Slot Sketch
    data remove storage sketch:temp Contents
    data remove storage sketch:temp Content
    data remove storage sketch:temp Slot
    data remove storage sketch:temp ItemInfo
    data remove storage sketch:temp isGlobalItemInfo
