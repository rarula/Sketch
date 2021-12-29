#> example:load
# @within tag/function minecraft:load

#> スコアボード
# @within example:**
    scoreboard objectives add Example dummy

#> チーム
# @within example:**
    team add NoCollision
    team modify NoCollision collisionRule never

# チームを設定
    team join NoCollision @a

# リセット
    tag @a[tag=Server.Azi] remove Server.Azi
    tag @a[tag=Server.Saba] remove Server.Saba
    tag @a[tag=Server.Ika] remove Server.Ika
    tag @a[tag=Server.Tako] remove Server.Tako
    tag @a[tag=Server.Uni] remove Server.Uni
    tag @a[tag=Server.Maguro] remove Server.Maguro
    tag @a[tag=Server.Hamachi] remove Server.Hamachi
    scoreboard players set $Server.PlayerCount.Azi Example 0
    scoreboard players set $Server.PlayerCount.Saba Example 0
    scoreboard players set $Server.PlayerCount.Ika Example 0
    scoreboard players set $Server.PlayerCount.Tako Example 0
    scoreboard players set $Server.PlayerCount.Uni Example 0
    scoreboard players set $Server.PlayerCount.Maguro Example 0
    scoreboard players set $Server.PlayerCount.Hamachi Example 0
