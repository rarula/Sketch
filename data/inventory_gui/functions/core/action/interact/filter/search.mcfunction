#> inventory_gui:core/action/interact/filter/search
# @within function inventory_gui:core/action/interact/_

#>
# @within inventory_gui:core/action/interact/filter/**
#declare tag InvGui.Filter.this

tag @s add InvGui.Filter.this
execute as @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity, distance=..9.0] run function inventory_gui:core/action/interact/filter/15
tag @s remove InvGui.Filter.this
