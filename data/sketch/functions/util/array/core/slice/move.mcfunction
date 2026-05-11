#> sketch:util/array/core/slice/move
# @within function
#   sketch:util/array/core/slice/_
#   sketch:util/array/core/slice/move

# Extract element
    data modify storage sketch:util/temp Sliced append from storage sketch:util in.array[-1]
    data remove storage sketch:util in.array[-1]
    scoreboard players remove $Index Sketch 1

# Recurse until all elements are extracted
    execute if score $Index Sketch matches 1.. run function sketch:util/array/core/slice/move
