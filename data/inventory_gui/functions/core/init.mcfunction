#> inventory_gui:core/init
#
# データパックを初期化する
#
# @within function inventory_gui:core/load

#> scoreboard設定
# @within inventory_gui:**
    scoreboard objectives add InventoryGuiDrop custom:minecraft.drop
    scoreboard objectives add InventoryGuiId dummy
    scoreboard objectives add InventoryGui dummy
    scoreboard players set $65536 InventoryGui 65536


# forceload設定
    forceload add 10000 10000


# shulkerbox設定
    setblock 10000 -64 10000 minecraft:orange_shulker_box{Lock:"InventoryGui"}


# 初期化済みとして設定
    data modify storage inventory_gui: Initialized set value true
