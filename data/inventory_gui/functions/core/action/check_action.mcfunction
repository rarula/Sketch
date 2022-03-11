#> inventory_gui:core/action/check_action
#
# アクション可能であるプレイヤーに対する処理を行う
#
# @within function inventory_gui:core/tick

# アイテムを選択していれば選択時の処理へ
    execute store success storage inventory_gui:temp isSelected byte 1.0 run clear @s #inventory_gui:all{InventoryGui:{Button:true}}
    execute if data storage inventory_gui:temp {isSelected:true} run function inventory_gui:core/action/select/_

# リセット
    data remove storage inventory_gui:temp isSelected
