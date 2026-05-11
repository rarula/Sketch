#> sketch:util/array/core/slice/_
#
# @input
#   storage sketch:util in
#       array: any[]
#       start?: int
#       end?: int
#
# @output
#   storage sketch:util out
#       array: any[]
#
# @within function sketch:util/array/slice

#>
# @private
    #declare score_holder $End
    #declare score_holder $Start

#>
# @within sketch:util/array/core/slice/**
    #declare score_holder $Index


# Initialize arguments
    execute unless data storage sketch:util in.end run data modify storage sketch:util in.end set value 2147483647
    execute unless data storage sketch:util in.start run data modify storage sketch:util in.start set value 0

# Initialize return value
    data modify storage sketch:util out.array set value []


# Get value
    execute store result score $End Sketch run data get storage sketch:util in.end
    execute store result score $Start Sketch run data get storage sketch:util in.start

# Remove elements from end onward
    execute store result score $Index Sketch if data storage sketch:util in.array[]
    scoreboard players operation $Index Sketch -= $End Sketch
    execute if score $Index Sketch matches 1.. run function sketch:util/array/core/slice/remove

# Extract elements from start onward
    execute store result score $Index Sketch if data storage sketch:util in.array[]
    scoreboard players operation $Index Sketch -= $Start Sketch
    execute if score $Index Sketch matches 1.. run function sketch:util/array/core/slice/move


# Reverse element order
    data modify storage sketch:util in.array set from storage sketch:util/temp Sliced
    function sketch:util/array/reverse


# Reset
    scoreboard players reset $End Sketch
    scoreboard players reset $Start Sketch
    scoreboard players reset $Index Sketch
    data remove storage sketch:util/temp Sliced
    data remove storage sketch:util in
