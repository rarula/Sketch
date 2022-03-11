#> inventory_gui:core/init
#
# データパックを初期化する
#
# @within function inventory_gui:core/load

#>
# @public
    #declare tag InvGui.ConnectingAt
    #declare storage inventory_gui:


#>
# @within inventory_gui:**
    #declare tag InvGui.Filter.0-0
    #declare tag InvGui.Filter.0-1
    #declare tag InvGui.Filter.1-0
    #declare tag InvGui.Filter.1-1
    #declare tag InvGui.Filter.2-0
    #declare tag InvGui.Filter.2-1
    #declare tag InvGui.Filter.3-0
    #declare tag InvGui.Filter.3-1
    #declare tag InvGui.Filter.4-0
    #declare tag InvGui.Filter.4-1
    #declare tag InvGui.Filter.5-0
    #declare tag InvGui.Filter.5-1
    #declare tag InvGui.Filter.6-0
    #declare tag InvGui.Filter.6-1
    #declare tag InvGui.Filter.7-0
    #declare tag InvGui.Filter.7-1
    #declare tag InvGui.Filter.8-0
    #declare tag InvGui.Filter.8-1
    #declare tag InvGui.Filter.9-0
    #declare tag InvGui.Filter.9-1
    #declare tag InvGui.Filter.10-0
    #declare tag InvGui.Filter.10-1
    #declare tag InvGui.Filter.11-0
    #declare tag InvGui.Filter.11-1
    #declare tag InvGui.Filter.12-0
    #declare tag InvGui.Filter.12-1
    #declare tag InvGui.Filter.13-0
    #declare tag InvGui.Filter.13-1
    #declare tag InvGui.Filter.14-0
    #declare tag InvGui.Filter.14-1
    #declare tag InvGui.Filter.15-0
    #declare tag InvGui.Filter.15-1
    #declare tag InvGui.RegisteredEntity
    #declare score_holder $65536
    #declare storage inventory_gui:temp


#> scoreboard設定
# @within inventory_gui:**
    scoreboard objectives add InventoryGuiDrop custom:minecraft.drop
    scoreboard objectives add InventoryGuiId dummy
    scoreboard objectives add InventoryGui dummy
    scoreboard players set $65536 InventoryGui 65536


#> forceload設定
# ShulkerBox
    forceload add 10000 10000


#> shulkerbox設定
# @public
    #alias vector InventoryGui 10000 -64 10000
    setblock 10000 -64 10000 minecraft:orange_shulker_box{Lock:"InventoryGui"}


#> 初期化済みとして設定
    data modify storage inventory_gui: Initialized set value true
