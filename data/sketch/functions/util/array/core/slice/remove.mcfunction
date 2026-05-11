#> sketch:util/array/core/slice/remove
# @within function
#   sketch:util/array/core/slice/_
#   sketch:util/array/core/slice/remove

# Remove element
    data remove storage sketch:util in.array[-1]
    scoreboard players remove $Index Sketch 1

# Recurse until all elements are removed
    execute if score $Index Sketch matches 1.. run function sketch:util/array/core/slice/remove
