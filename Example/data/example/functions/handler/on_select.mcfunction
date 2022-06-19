#> example:handler/on_select
#
# ボタンを選択したときに呼び出される
#
# @within tag/function sketch:on_select

# 効果音
    execute if data storage sketch: out.id{PlaySound:"Button"} run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 0.5
    execute if data storage sketch: out.id{PlaySound:"Select"} run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1

# メニューに入れたアイテムを保存
    execute if data storage sketch: out.id{ClickEvent:"Next"} run function example:menu/container/save_contents
    execute if data storage sketch: out.id{ClickEvent:"Back"} run function example:menu/container/save_contents

# ボタン
    execute if data storage sketch: out.id{ClickEvent:"Next"} run scoreboard players add @s Page 1
    execute if data storage sketch: out.id{ClickEvent:"Back"} run scoreboard players remove @s Page 1
    execute if data storage sketch: out.id{ClickEvent:"Error"} run tellraw @s {"color":"red", "text":"これ以上先のページに進むことはできません！"}

# メニュー
    execute if data storage sketch: out.id{Menu:"Container"} run function example:menu/container/create
