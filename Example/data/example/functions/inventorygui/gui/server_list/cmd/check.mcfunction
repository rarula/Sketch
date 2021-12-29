#> example:inventorygui/gui/server_list/cmd/check
# @within function example:inventorygui/gui/server_list/check

execute if data storage inventorygui: id.cmd{ServerStatus:"ONLINE", Map:"Azi"} unless entity @s[tag=Server.Azi] run function example:inventorygui/gui/server_list/cmd/server/azi
execute if data storage inventorygui: id.cmd{ServerStatus:"ONLINE", Map:"Saba"} unless entity @s[tag=Server.Saba] run function example:inventorygui/gui/server_list/cmd/server/saba
execute if data storage inventorygui: id.cmd{ServerStatus:"ONLINE", Map:"Ika"} unless entity @s[tag=Server.Ika] run function example:inventorygui/gui/server_list/cmd/server/ika
execute if data storage inventorygui: id.cmd{ServerStatus:"ONLINE", Map:"Tako"} unless entity @s[tag=Server.Tako] run function example:inventorygui/gui/server_list/cmd/server/tako
execute if data storage inventorygui: id.cmd{ServerStatus:"ONLINE", Map:"Uni"} unless entity @s[tag=Server.Uni] run function example:inventorygui/gui/server_list/cmd/server/uni
execute if data storage inventorygui: id.cmd{ServerStatus:"ONLINE", Map:"Maguro"} unless entity @s[tag=Server.Maguro] run function example:inventorygui/gui/server_list/cmd/server/maguro
execute if data storage inventorygui: id.cmd{ServerStatus:"ONLINE", Map:"Hamachi"} unless entity @s[tag=Server.Hamachi] run function example:inventorygui/gui/server_list/cmd/server/hamachi

execute if data storage inventorygui: id.cmd{ServerStatus:"ONLINE"} run tellraw @a [{"color":"gold","selector":"@s"},{"text":" switched to "},{"bold":true,"nbt":"id.cmd.Map","storage":"inventorygui:"}]
execute if data storage inventorygui: id.cmd{ServerStatus:"MAINTENANCE"} run tellraw @s [{"color":"red","text":"このサーバーは現在メンテナンス中のため参加できません"}]
