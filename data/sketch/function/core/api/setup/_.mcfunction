#> sketch:core/api/setup/_
# @within function sketch:api/setup

# forceload設定
    forceload add 10000 10000


# シュルカーボックス設定
## 入出力用
    setblock 10000 0 10000 minecraft:orange_shulker_box{Lock:"Sketch"}

## アイテム保存用
    setblock 10000 1 10000 minecraft:orange_shulker_box{Lock:"Sketch"}

## メニュー作成用
    setblock 10000 2 10000 minecraft:orange_shulker_box{Lock:"Sketch"}
