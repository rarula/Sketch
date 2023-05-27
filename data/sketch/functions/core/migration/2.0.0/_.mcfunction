#> sketch:core/migration/2.0.0/_
# @within function sketch:core/load

# バージョン設定
    data modify storage sketch: Version set value "2.0.0"


# ストレージ設定
    data modify storage sketch:core GlobalItemInfoMap set value []

# スコアボード設定
    scoreboard objectives add Sketch dummy
    scoreboard objectives add Sketch.Id dummy
    scoreboard objectives add Sketch.Drop custom:minecraft.drop

# スコアホルダー設定
    scoreboard players set $LocalItemSlotIndex Sketch 0
    scoreboard players set $MinecartIndex Sketch 0

# 定数設定
    scoreboard players set $65536 Sketch 65536
