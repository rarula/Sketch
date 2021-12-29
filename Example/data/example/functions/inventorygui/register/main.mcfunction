#> example:inventorygui/register/main
# @public

#>
# @private
    #declare tag Example.Main
    #declare tag Example.Main.Uninitialized

# 召喚
    summon minecraft:chest_minecart ~ ~ ~ {CustomName:'""', Silent:true, NoGravity:true, Invulnerable:true, Tags:["Example.Main", "Example.Main.Uninitialized"]}

# InventoryGui に登録
    execute as @e[type=minecraft:chest_minecart, tag=Example.Main.Uninitialized] run function inventorygui:register

# チームを設定
    team join NoCollision @e[type=minecraft:chest_minecart, tag=Example.Main.Uninitialized]

# 初期化済みとして設定
    tag @e[type=minecraft:chest_minecart, tag=Example.Main.Uninitialized] remove Example.Main.Uninitialized
