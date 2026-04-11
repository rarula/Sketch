#> sketch:core/common/api/build/create_menu/loop
# @within function
#   sketch:core/common/api/build/create_menu/_
#   sketch:core/common/api/build/create_menu/loop

# 配置するアイテムのスロットを設定
    execute store result storage sketch:temp Slot byte 1.0 run scoreboard players get $Slot Sketch

# 配置するアイテムのキーを設定
    data modify storage sketch:temp Content set from storage sketch:temp Contents[-1]
    data remove storage sketch:temp Contents[-1]

# アイテムを配置
    function sketch:core/common/api/build/create_menu/set_item/_


# 配置するアイテムのスロットを変更
    scoreboard players remove $Slot Sketch 1

# すべてのアイテムを配置するまで再帰
    execute if score $Slot Sketch matches 0.. run function sketch:core/common/api/build/create_menu/loop
