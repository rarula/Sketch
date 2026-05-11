#> sketch:util/map/core/delete/move
# @within function
#   sketch:util/map/core/delete/_
#   sketch:util/map/core/delete/move

# Test if the key at the end of the array matches
    data modify storage sketch:util/temp Key set from storage sketch:util out.map[-1].key
    execute store success storage sketch:util/temp Result byte 1.0 run data modify storage sketch:util/temp Key set from storage sketch:util in.key

# Key doesn't match -> Move last array element to another data
    execute if data storage sketch:util/temp {Result:true} run data modify storage sketch:util/temp DeletedElements append from storage sketch:util out.map[-1]
    execute if data storage sketch:util/temp {Result:true} run data remove storage sketch:util out.map[-1]

# Recurse until key matches or all elements are searched
    execute if data storage sketch:util/temp {Result:true} if data storage sketch:util out.map[-1] run function sketch:util/map/core/delete/move
