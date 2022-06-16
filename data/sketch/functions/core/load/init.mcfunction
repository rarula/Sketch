#> sketch:core/load/init
#
# データパックが初めてロードされたときに呼び出される
#
# @within function sketch:core/load/_

#> scoreboard設定
# @within sketch:**
    scoreboard objectives add SketchDrop custom:minecraft.drop
    scoreboard objectives add SketchId dummy
    scoreboard objectives add Sketch dummy


# scoreholder設定
    scoreboard players set $65536 Sketch 65536


# forceload設定
    forceload add 10000 10000


# shulkerbox設定
    setblock 10000 -64 10000 minecraft:orange_shulker_box{Lock:"Sketch"}


# 初期化済みとして設定
    data modify storage sketch: Version set value "0.1.0"
