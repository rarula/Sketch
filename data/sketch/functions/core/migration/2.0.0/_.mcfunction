#> sketch:core/migration/2.0.0/_
# @within function sketch:core/load

# Version setup
    data modify storage sketch:data Version set value "2.0.0"


# Storage setup
    data modify storage sketch:core GlobalItemInfoMap set value []

# Scoreboard setup
    scoreboard objectives add Sketch dummy
    scoreboard objectives add Sketch.Id dummy
    scoreboard objectives add Sketch.Drop custom:minecraft.drop

# Score holder setup
    scoreboard players set $LocalItemSlotIndex Sketch 0
    scoreboard players set $MinecartIndex Sketch 0

# Constant setup
    scoreboard players set $65536 Sketch 65536
