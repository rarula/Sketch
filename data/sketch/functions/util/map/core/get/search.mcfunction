#> sketch:util/map/core/get/search
# @within function
#   sketch:util/map/core/get/_
#   sketch:util/map/core/get/search

# Test if the key at the end of the array matches
    data modify storage sketch:util/temp Key set from storage sketch:util in.map[-1].key
    execute store success storage sketch:util/temp Result byte 1.0 run data modify storage sketch:util/temp Key set from storage sketch:util in.key

# Key matches -> Return value of last array element
    execute if data storage sketch:util/temp {Result:false} run data modify storage sketch:util out.value set from storage sketch:util in.map[-1].value

# Key doesn't match -> Delete last array element
    execute if data storage sketch:util/temp {Result:true} run data remove storage sketch:util in.map[-1]

# Recurse until key matches or all elements are searched
    execute if data storage sketch:util/temp {Result:true} if data storage sketch:util in.map[-1] run function sketch:util/map/core/get/search
