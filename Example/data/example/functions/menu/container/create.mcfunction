#> example:menu/container/create
#
# メニューを作成する
#
# @within function
#   example:handler/on_open
#   example:handler/on_select

# メニューを初期化
    function sketch:api/refresh

# 保存したアイテムを復元
    function #oh_my_dat:please
    execute if score @s Page matches 1 run data modify block 10000 -64 10000 Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Example.Page[0]
    execute if score @s Page matches 2 run data modify block 10000 -64 10000 Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Example.Page[1]
    execute if score @s Page matches 3 run data modify block 10000 -64 10000 Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Example.Page[2]
    execute if score @s Page matches 4 run data modify block 10000 -64 10000 Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Example.Page[3]

# ページごとに対応したアイテムを配置
    execute if score @s Page matches 0004 run item replace block 10000 -64 10000 container.8 with minecraft:barrier{Sketch:{id:{Menu:"Container", ClickEvent:"Error", PlaySound:"Button"}}, display:{Name:'{"color":"red", "text":"これ以上先のページへ進むことはできません！", "italic":false}'}}
    execute if score @s Page matches 1..3 run item replace block 10000 -64 10000 container.8 with minecraft:arrow{Sketch:{id:{Menu:"Container", ClickEvent:"Next", PlaySound:"Select"}}, display:{Name:'{"text":"次のページへ", "italic":false}'}}

    execute if score @s Page matches 0001 run item replace block 10000 -64 10000 container.26 with minecraft:barrier{Sketch:{id:{Menu:"Container", ClickEvent:"Error", PlaySound:"Button"}}, display:{Name:'{"color":"red", "text":"これ以上先のページへ進むことはできません！", "italic":false}'}}
    execute if score @s Page matches 2..4 run item replace block 10000 -64 10000 container.26 with minecraft:arrow{Sketch:{id:{Menu:"Container", ClickEvent:"Back", PlaySound:"Select"}}, display:{Name:'{"text":"前のページへ", "italic":false}'}}

    item modify block 10000 -64 10000 container.8 sketch:button
    item modify block 10000 -64 10000 container.26 sketch:button

# メニューを作成
    function sketch:api/create
