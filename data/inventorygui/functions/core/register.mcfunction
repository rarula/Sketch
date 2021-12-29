#> inventorygui:core/register
# @within function inventorygui:register

#>
# @private
    #declare score_holder $Index
    #declare score_holder $TempIndex

# タグを設定
    tag @s add InvGui.RegisteredEntity

# タグを設定 (インタラクト先指定用)
    scoreboard players add $Index InventoryGui 1
    execute if score $Index InventoryGui matches 32768 run scoreboard players set $Index InventoryGui 1
    scoreboard players operation $TempIndex InventoryGui = $Index InventoryGui

    scoreboard players operation $TempIndex InventoryGui *= $65536 InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.15-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.15-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.14-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.14-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.13-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.13-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.12-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.12-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.11-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.11-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.10-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.10-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.9-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.9-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.8-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.8-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.7-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.7-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.6-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.6-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.5-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.5-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.4-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.4-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.3-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.3-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.2-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.2-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.1-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.1-1

    scoreboard players operation $TempIndex InventoryGui += $TempIndex InventoryGui
    execute if score $TempIndex InventoryGui matches 0.. run tag @s add InvGui.Filter.0-0
    execute if score $TempIndex InventoryGui matches ..-1 run tag @s add InvGui.Filter.0-1
    scoreboard players reset $TempIndex InventoryGui

    scoreboard players operation @s InventoryGuiId = $Index InventoryGui
