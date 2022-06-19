#> example:register
#
# チェスト付きトロッコを召喚し、Sketchに登録する
#
# @public

# Sketch用のチェスト付きトロッコを召喚
    summon minecraft:chest_minecart ~ ~ ~ {CustomName:'""', Silent:true, NoGravity:true, Invulnerable:true, Tags:["ExampleEntity", "ExampleEntityInit"], DisplayState:{Name:"minecraft:air"}, CustomDisplayTile:true}

# Sketchに登録
    execute as @e[type=minecraft:chest_minecart, tag=ExampleEntityInit] run function sketch:api/register

# リセット
    tag @e[type=minecraft:chest_minecart, tag=ExampleEntityInit] remove ExampleEntityInit
