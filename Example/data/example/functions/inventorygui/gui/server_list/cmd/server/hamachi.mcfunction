#> example:inventorygui/gui/server_list/cmd/server/hamachi
# @within function example:inventorygui/gui/server_list/cmd/check

execute if entity @s[tag=Server.Azi] run scoreboard players remove $Server.PlayerCount.Azi Example 1
execute if entity @s[tag=Server.Saba] run scoreboard players remove $Server.PlayerCount.Saba Example 1
execute if entity @s[tag=Server.Ika] run scoreboard players remove $Server.PlayerCount.Ika Example 1
execute if entity @s[tag=Server.Tako] run scoreboard players remove $Server.PlayerCount.Tako Example 1
execute if entity @s[tag=Server.Uni] run scoreboard players remove $Server.PlayerCount.Uni Example 1
execute if entity @s[tag=Server.Maguro] run scoreboard players remove $Server.PlayerCount.Maguro Example 1
scoreboard players add $Server.PlayerCount.Hamachi Example 1

tag @s[tag=Server.Azi] remove Server.Azi
tag @s[tag=Server.Saba] remove Server.Saba
tag @s[tag=Server.Ika] remove Server.Ika
tag @s[tag=Server.Tako] remove Server.Tako
tag @s[tag=Server.Uni] remove Server.Uni
tag @s[tag=Server.Maguro] remove Server.Maguro
tag @s add Server.Hamachi
