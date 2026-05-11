#> sketch:core/api/setup/_
# @within function sketch:api/setup

# Forceload setup
    forceload add 10000 10000


# Shulker box setup
## For input/output
    setblock 10000 0 10000 minecraft:orange_shulker_box{Lock:"Sketch"}

## For item storage
    setblock 10000 1 10000 minecraft:orange_shulker_box{Lock:"Sketch"}

## For menu creation
    setblock 10000 2 10000 minecraft:orange_shulker_box{Lock:"Sketch"}
