#> inventorygui:core/init
# @within function inventorygui:core/load

#>
# @public
    #alias vector InventoryGui 1 1 1
    #declare storage inventorygui:
    #declare tag InvGui.ConnectingAt

#> 定数
# @within inventorygui:**
#declare score_holder $65536

#> タグ
# @within inventorygui:**
    #declare tag InvGui.RegisteredEntity
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

#> スコアボード
# @within inventorygui:**
    scoreboard objectives add InventoryGuiDrop custom:minecraft.drop
    scoreboard objectives add InventoryGuiId dummy
    scoreboard objectives add InventoryGui dummy

# スコアを設定
    scoreboard players set $65536 InventoryGui 65536

# ワールド依存設定
    execute in minecraft:overworld run forceload add 1 1
    execute in minecraft:overworld run setblock 1 1 1 minecraft:orange_shulker_box{Lock:"InventoryGui"}

# 初期化済みとして設定
    data modify storage inventorygui: Initialized set value true
