#> example:inventorygui/gui/main/cmd/check
# @within function example:inventorygui/gui/main/check

execute if data storage inventorygui: id{cmd:"TRAINING"} run function example:inventorygui/gui/main/cmd/training
execute if data storage inventorygui: id{cmd:"RETURN"} run tp @s 8.5 -60 8.5
