#> sketch:core/emitter/check_item_drop/find_dropped_item/_
# @within function sketch:core/emitter/check_item_drop/_

# Get data of dropped item
    data modify storage sketch:temp ItemEntity set from entity @s

# Check if Thrower and UUID match
    execute store success storage sketch:temp Result byte 1.0 run data modify storage sketch:temp ItemEntity.Thrower set from entity @a[tag=Sketch.checkItemDrop.this, distance=..5.0, limit=1] UUID

# Thrower and UUID match -> Dropped item is a button -> Dropped item found
    execute if data storage sketch:temp {Result:false} if data storage sketch:temp ItemEntity.Item.tag.Sketch{isButton:true} run function sketch:core/emitter/check_item_drop/found_dropped_item/item
    execute if data storage sketch:temp {Result:false} if data storage sketch:temp ItemEntity.Item.tag.Sketch{isButton:true} as @a[tag=Sketch.checkItemDrop.this, distance=..5.0, limit=1] run function sketch:core/emitter/check_item_drop/found_dropped_item/player

# Reset
    data remove storage sketch:temp ItemEntity
    data remove storage sketch:temp Result
