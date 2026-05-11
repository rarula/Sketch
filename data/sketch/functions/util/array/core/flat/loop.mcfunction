#> sketch:util/array/core/flat/loop
# @within function
#   sketch:util/array/core/flat/_
#   sketch:util/array/core/flat/loop

# Test if NBT contained in ArrayList[-1][-1] is a list
    execute store success storage sketch:util/temp isListTag byte 1.0 run data modify storage sketch:util/temp ArrayList[-1] append value []

# NBT is list -> Reference that list from the next
    execute if data storage sketch:util/temp {isListTag:true} run data remove storage sketch:util/temp ArrayList[-1][-1]
    execute if data storage sketch:util/temp {isListTag:true} run data modify storage sketch:util/temp ArrayList append from storage sketch:util/temp ArrayList[-1][-1]

# NBT is something other than list -> Add that NBT to result
    execute if data storage sketch:util/temp {isListTag:false} run data modify storage sketch:util/temp Flattened append from storage sketch:util/temp ArrayList[-1][-1]
    execute if data storage sketch:util/temp {isListTag:false} run data remove storage sketch:util/temp ArrayList[-1][-1]

# Referenced list is empty -> Delete the referenced list and original list
    execute unless data storage sketch:util/temp ArrayList[-1][0] run data remove storage sketch:util/temp ArrayList[-2][-1]
    execute unless data storage sketch:util/temp ArrayList[-1][0] run data remove storage sketch:util/temp ArrayList[-1]

# Recurse until all elements are flattened
    execute if data storage sketch:util/temp ArrayList[0] run function sketch:util/array/core/flat/loop
