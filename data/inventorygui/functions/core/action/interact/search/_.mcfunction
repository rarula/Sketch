#> inventorygui:core/action/interact/search/_
# @within function inventorygui:core/action/interact/_

#>
# @within inventorygui:core/action/interact/search/**
#declare tag InvGui.Filter.this

tag @s add InvGui.Filter.this
execute as @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity, distance=..10.0] run function inventorygui:core/action/interact/search/15
tag @s remove InvGui.Filter.this
